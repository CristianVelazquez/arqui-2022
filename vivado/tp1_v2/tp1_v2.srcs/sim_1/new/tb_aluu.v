`timescale 1ns / 1ps

module testbench_alu;
 
    localparam NB_OP          =     6;
    localparam NB_IN          =     8;
    localparam NB_OUT         =     8;  
    localparam NB_IN_ENABLE   =     3;
 
    localparam I_CLK        =       1'b0;
    localparam I_ENABLE     =       3'b000;         
    localparam I_DATA_A     = 8'b1;   // 1    
    localparam I_DATA_B     = 8'b10;  // 2    
 
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
    //reg [NB_IN - 1 :0]              I_DATA_A;
    //reg [NB_IN - 1 :0]              I_DATA_B;
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
        //I_DATA_A     = 8'b0;
        //I_DATA_B     = 8'b0;
        //#10
        //I_DATA_A = $urandom();
        //I_DATA_B = $urandom();
        #20
        i_switch  = I_DATA_A;
        #20
        i_enable[0]   = 1;
        #20
        i_enable[0]   = 0;
        i_switch  = I_DATA_B;
        i_enable[1]   = 1;
        
        #20
        i_enable[1]   = 0;
        i_switch  = ADD; // Addition 80
        i_enable[2]   = 1;
        $display("#######################################################");
        $display("ADD code operation = %b %h (hexa)",i_switch,i_switch);
        #20
        //i_switch  = 8'b0;
        i_enable[2]   = 0;
        $display("ADD result = %b ",o_led);
        if(o_led == 8'b11)
         $display("test operation ADD correct!");
        else
         $display("test ADD fail");
        
        #20
        i_switch  = SUB; //120
        i_enable[2]   = 1;
        $display("#######################################################");
        $display("SUB code operation = %b %h (hexa)",i_switch,i_switch);
        #20
        i_enable[2]   = 0;
        $display("SUB result = %b ",o_led);
        if(o_led == 8'b11111111)
            $display("test operation SUB correct!");
        else
            $display("test operation SUB fail");
        
        #20
        i_switch  = AND; //160
        i_enable[2]   = 1;
        $display("#######################################################");
        $display("AND code operation = %b %h (hexa)",i_switch,i_switch);
        #20
        i_enable[2]   = 0;
        $display("AND result = %b ",o_led);
          if(o_led == 8'b0)
            $display("test operation AND correct!");
        else
            $display("test operation AND fail");
        
        #20
        i_switch  = OR; //200
        i_enable[2]   = 1;
        $display("#######################################################");
        $display("OR code operation = %b %h (hexa)",i_switch,i_switch);
        #20
        i_enable[2]   = 0;
        $display("OR result = %b (decimal)",o_led);
        if(o_led == 8'b11)
            $display("test operation OR correct!");
        else
            $display("test operation OR fail");
        
        #20;
        i_switch  = XOR; //240
        i_enable[2]   = 1;
        $display("#######################################################");
        $display("XOR code operation = %b %h (hexa)",i_switch,i_switch);
        #20
        i_enable[2]   = 0;
        $display("XOR result = %b (decimal)",o_led);
        if(o_led == 8'b11)
            $display("test operation XOR correct!");
        else
            $display("test operation XOR fail");
        
        #20  
        i_switch  = SRA; //280
        i_enable[2]   = 1;
        $display("#######################################################");
        $display("SRA code operation = %b %h (hexa)",i_switch,i_switch);
        #20
        i_enable[2]   = 0;
        $display("SRA result = %b ",o_led);
        if(o_led == 8'b0)
            $display("test operation SRA correct!");
        else
            $display("test operation SRA fail");
        
        #20
        i_switch  = SRL; //320
        i_enable[2]   = 1;
        $display("#######################################################");
        $display("SRL code operation = %b %h (hexa)",i_switch,i_switch);
        #20
        i_enable[2]   = 0;
         $display("SRL result = %b (decimal)",o_led);
        if(o_led == 8'b0)
            $display("test operation SRL correct!");
        else
            $display("test operation SRL fail");
        
        #20
        i_switch  = NOR; //360
        i_enable[2]   = 1;
        $display("#######################################################");
        $display("NOR code operation = %b %h (hexa)",i_switch,i_switch);
        #20
        i_enable[2]   = 0;
        $display("NOR result = %b (decimal)",o_led);
        if(o_led == 8'b11111100)
            $display("test operation SRL correct!");
        else
            $display("test operation NOR fail");
        #20
        $display("#######################################################");
        i_switch = 8'b0;
    end
   
    always begin #5 i_clk = ~i_clk;
            
    end
  endmodule