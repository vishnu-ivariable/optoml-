`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2026 15:15:22
// Design Name: 
// Module Name: Register_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Register_tb();
localparam width = 8;
reg clk,reset;

reg [width-1:0] in_data;
reg in_valid;
wire in_ready;

wire [width-1:0] out_data;
reg out_valid;
//wire out_ready;

Register dut(
.clk(clk),
.reset(reset),

.in_data(in_data), 
.in_valid(in_valid),
.in_ready(in_ready),

.out_data(out_data),
.out_valid(out_valid)
//.out_ready(out_ready)
);

initial begin 
clk=0;
forever #5 clk=~clk; 
end

initial begin 
reset = 1;
in_data=0;
in_valid =0;
out_valid=0;

#20
reset =0;
in_data = 8'h44;
in_valid =1;

//#10
//in_valid=0;
#10
in_data = 8'h54;
in_valid =1;
#10
out_valid=1;
#20
in_valid =0;
#20
$finish;
end
endmodule
