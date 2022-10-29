`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2022 17:15:42
// Design Name: 
// Module Name: RX
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.02 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RX
#( 
    parameter                  NB_DATA     = 8,       // Numero de bits del dato
    parameter                  SB_TICK     = 16       // Ticks for stop bits  
)
(
    // INPUTS
    input wire                  i_clk,
    input wire                  i_reset,
    input wire                  i_rx,
    input wire                  i_tick,                
    
    // OUTPUTS
    output reg                  o_rx_done_tick,
    output wire [NB_DATA-1:0]   o_data
);

    // LOCAL_PARAMETERS
    localparam  [1:0]   IDLE        = 2'b00;
    localparam  [1:0]   START       = 2'b01;
    localparam  [1:0]   DATA        = 2'b10;
    localparam  [1:0]   STOP        = 2'b11;
    
    // INTERNAL
    reg         [1:0]   state_reg;
    reg         [1:0]   state_next;
    reg         [3:0]   tickCounter_reg, tickCounter_next;
    reg         [2:0]   bitCounter_reg, bitCounter_next;
    reg         [7:0]   buffer_reg, buffer_next;

    // MEMORY
    always @(posedge i_clk, posedge i_reset)
        if (i_reset)  
            begin  
                state_reg       <= IDLE;  
                tickCounter_reg <= 0;  
                bitCounter_reg  <= 0;  
                buffer_reg      <= 0;  
            end 
        else 
            begin  
                state_reg       <= state_next;
                tickCounter_reg <= tickCounter_next;  
                bitCounter_reg  <= bitCounter_next;  
                buffer_reg      <= buffer_next;  
            end 
    

    always @* 
    begin    
        state_next = state_reg;
        o_rx_done_tick = 1'b0;                          
        tickCounter_next = tickCounter_reg;
        bitCounter_next = bitCounter_reg;
        buffer_next = buffer_reg;
    
        case(state_reg)
            IDLE:                                       
                if(~i_rx) 
                    begin                  
                        state_next = START;                 
                        tickCounter_next = 0;                   
                    end

            START:                                      
                if(i_tick)                         
                    if(tickCounter_reg == 7) 
                        begin      
                            state_next = DATA;              
                            tickCounter_next = 0;               
                            bitCounter_next = 0;                
                        end    
                    else                                
                        tickCounter_next = tickCounter_reg + 1;             

                        
            DATA:                                       
                if(i_tick)                         
                    if(tickCounter_reg == 15) 
                        begin      
                            tickCounter_next = 0;               
                            buffer_next = {i_rx, buffer_reg [7:1]}; 
                            if(bitCounter_reg == (NB_DATA-1))
                                state_next = STOP;          
                            else                            
                                bitCounter_next = bitCounter_reg + 1;         
                        end
                    else                                
                        tickCounter_next = tickCounter_reg + 1;             


            STOP:                                       
                if(i_tick)                         
                    if(tickCounter_reg == (SB_TICK-1)) 
                        begin      
                            state_next = IDLE;              
                            o_rx_done_tick = 1'b1;          
                        end
                    else                                
                        tickCounter_next = tickCounter_reg + 1;             

            default : begin                             // DEFAULT: Fault Recovery
                state_next       = IDLE;                // Vuelvo al estado IDLE.
                tickCounter_next = 0;                   // Reinicio TickCounter.
                bitCounter_next  = 4'b0000;             // Reinicio contador de bits recibidos.
                buffer_next      = 0;                   // Reinicio buffer de datos recibidos.
            end                 
        endcase
    end
    
    // OUTPUT
    assign o_data = buffer_reg;                              

endmodule