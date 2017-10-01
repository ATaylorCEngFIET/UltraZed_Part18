
`timescale 1 ns / 1 ps

  module design_1_v_tpg_0_0_v_tpg_mul_mul_9nsQgW_DSP48_8(clk, rst, ce, a, b, p);
input clk;
input rst;
input ce;
input [9 - 1 : 0] a; 
input signed [20 - 1 : 0] b; 
output signed [28 - 1 : 0] p; 

reg signed [28 - 1 : 0] p_reg; 

reg [9 - 1 : 0] a_reg; 
reg signed [20 - 1 : 0] b_reg; 

always @ (posedge clk) begin
    if (ce) begin
        a_reg <= a;
        b_reg <= b;
        p_reg <= $signed ({1'b0, a_reg}) * $signed (b_reg);
    end
end

assign p = p_reg;

endmodule

`timescale 1 ns / 1 ps
module design_1_v_tpg_0_0_v_tpg_mul_mul_9nsQgW(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



design_1_v_tpg_0_0_v_tpg_mul_mul_9nsQgW_DSP48_8 design_1_v_tpg_0_0_v_tpg_mul_mul_9nsQgW_DSP48_8_U(
    .clk( clk ),
    .rst( reset ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

