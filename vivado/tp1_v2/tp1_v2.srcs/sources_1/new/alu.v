// Code your design here
`timescale 1ns / 1ps

module alu
#(
  parameter NB_OP        =   6,
  parameter NB_IN        =   8,
  parameter NB_OUT       =   8,
  parameter NB_IN_ENABLE =   3
)
//--------------------------------------------------------------------------------
(
  input                             i_clk,
  input   [NB_IN_ENABLE - 1 : 0]    i_enable,
  input   [NB_IN - 1 : 0]           i_switch,
  output  [NB_OUT - 1 : 0]          o_led,
  output                            o_carry_bit
  //output o_zero_bit
 
);
//--------------------------------------------------------------------------------    
    //PARAMETROS LOCALES
  localparam ADD        =   6'b100000; //(20)
  localparam SUB        =   6'b100010; //(22)
  localparam AND        =   6'b100100; //(24)
  localparam OR         =   6'b100101; //(25)
  localparam XOR        =   6'b100110; //(26)
  localparam SRA        =   6'b000011; //(03)
  localparam SRL        =   6'b000010; //(02)
  localparam NOR        =   6'b100111; //(27)
 
//--------------------------------------------------------------------------------
  reg [NB_IN - 1 : 0]       data_a;
  reg [NB_IN - 1 : 0]       data_b;
  reg [NB_OP - 1 : 0]       op_code;
  reg [NB_OUT : 0]          result; //bit 8 es el carry
//--------------------------------------------------------------------------------
  assign o_led          =   result; //7:0
  assign o_carry_bit    =   result[NB_OUT];
  //assign o_zero_bit = ~|o_led;
//--------------------------------------------------------------------------------
 
  always@(posedge i_clk) begin:r_alu
//--------------------------------------------------------------------------------
    data_a  = i_enable[0] == 1 ? i_switch : data_a;
    data_b  = i_enable[1] == 1 ? i_switch : data_b;
    op_code = i_enable[2] == 1 ? i_switch : op_code;
//--------------------------------------------------------------------------------
    case(op_code)
      ADD:
        result = data_a + data_b;
      SUB:
        result = data_a - data_b;
      AND:
        result = data_a & data_b;
      OR:
        result = data_a | data_b;
      XOR:
        result = data_a ^ data_b;
      SRA:
        result = data_a >>> data_b;
      SRL:
        result = data_a >> data_b;
      NOR:
        result = ~(data_a | data_b);
      default:
        result = {NB_OUT{1'b0}};
    endcase
   
  end
 
   
endmodule