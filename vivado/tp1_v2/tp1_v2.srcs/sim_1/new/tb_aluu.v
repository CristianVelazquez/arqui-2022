`timescale 1ns / 1ps

module testbench_alu;
 
    localparam NB_OP          =     6;
    localparam NB_IN          =     8;
    localparam NB_OUT         =     8;  
    localparam NB_IN_ENABLE   =     3;
 
    localparam I_CLK        =       1'b0;
    localparam I_ENABLE     =       3'b000;         
    localparam I_OPERATION  =       6'b0;   // 0
 
    localparam ADD          =       6'b100000; //(20)
    localparam SUB          =       6'b100010; //(22)
    localparam AND          =       6'b100100; //(24)
    localparam OR           =       6'b100101; //(25)
    localparam XOR          =       6'b100110; //(26)
    localparam SRA          =       6'b000011; //(03)
    localparam SRL          =       6'b000010; //(02)
    localparam NOR          =       6'b100111; //(27)
 
//----------------------------------

  //Inputs
    reg                             i_clk;
    reg [NB_IN_ENABLE -1 : 0]       i_enable;
    reg [NB_IN - 1 :0]              i_switch;
    reg [NB_IN - 1 :0]              I_DATA_A;
    reg [NB_IN - 1 :0]              I_DATA_B;
    //Outputs
    wire  [NB_OUT - 1 : 0]          o_led;
    wire                            o_carry_bit;
    //wire                o_zero_bit;

    // Verilog code for ALU
    alu test_unit(
            i_clk,
            i_enable,
            i_switch,     // ALU N-bit Inputs                
            o_led,      // ALU 8-bit Output
            o_carry_bit   // Carry Out Flag,
            //o_zero_bit // Zero Out Flag
        );
    initial begin
        //$dumpfile("dump.vcd"); $dumpvars;
        i_clk        = I_CLK;
        i_enable     = I_ENABLE;
        i_switch     = 8'b0;
        I_DATA_A     = 8'b0;
        I_DATA_B     = 8'b0;
        #10
        I_DATA_A = $urandom();
        I_DATA_B = $urandom();
        #10
        i_switch  = I_DATA_A;
        #10
        i_enable[0]   = 1;
        #10
        i_enable[0]   = 0;
        i_switch  = I_DATA_B;
        i_enable[1]   = 1;
        #10
        i_enable[1]   = 0;
        i_switch  = ADD; // Addition 50
        i_enable[2]   = 1;
        #10
        //i_switch  = 8'b0;
        i_enable[2]   = 0;
        #10
        i_switch  = SUB; //70
        i_enable[2]   = 1;
        #10
        i_enable[2]   = 0;
        #10
        i_switch  = AND; //90
        i_enable[2]   = 1;
        #10
        i_enable[2]   = 0;
        #10 
        i_switch  = OR; //110
        i_enable[2]   = 1;
        #10
        i_enable[2]   = 0;
        #10;
        i_switch  = XOR; //130
        i_enable[2]   = 1;
        #10
        i_enable[2]   = 0;
        #10     
        i_switch  = SRA; //150
        i_enable[2]   = 1;
        #10
        i_enable[2]   = 0;
        #10
        i_switch  = SRL; //170
        i_enable[2]   = 1;
        #10
        i_enable[2]   = 0;
        #10
        i_switch  = NOR; //190
        i_enable[2]   = 1;
        #10
        i_enable[2]   = 0;
        #10
        i_switch = 8'b0;
    end
   
    always #5 i_clk = ~i_clk;
    
    always@(posedge i_clk) begin
     case(i_switch)
      ADD:
        if(o_led == I_DATA_A + I_DATA_B)
          $display(" ADD CORRECTO ");
      else 
        $display(" VALOR INCORRECTO ");
      SUB:
        if(o_led == I_DATA_A - I_DATA_B)
        $display(" SUB CORRECTO ");
      else 
        $display(" VALOR INCORRECTO ");
       AND:
       if(o_led == (I_DATA_A & I_DATA_B))
        $display(" AND CORRECTO ");
      else 
        $display(" VALOR INCORRECTO ");
        OR:
        if(o_led == I_DATA_A | I_DATA_B)
        $display(" OR CORRECTO ");
      else 
        $display(" VALOR INCORRECTO ");
        XOR:
        if(o_led == I_DATA_A ^ I_DATA_B)
        $display(" XOR CORRECTO ");
      else 
        $display(" VALOR INCORRECTO ");
        SRA:
         if(o_led == I_DATA_A >>> I_DATA_B)
        $display(" SRA CORRECTO ");
      else 
        $display(" VALOR INCORRECTO ");
        SRL:
         if(o_led == I_DATA_A >> I_DATA_B)
        $display(" SRL CORRECTO ");
      else 
        $display(" VALOR INCORRECTO ");
        NOR:
         if(o_led == ~(I_DATA_A | I_DATA_B))
        $display(" NOR CORRECTO ");
      else 
        $display(" VALOR INCORRECTO ");
        
      endcase
    end
  endmodule