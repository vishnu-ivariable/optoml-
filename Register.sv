`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2026 12:40:23
// Design Name: 
// Module Name: Register
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


module Register#(
parameter width = 8// width ={8,16,32,64}
)(
input clk,
input reset,

input reg [width-1:0] in_data, 
input in_valid,
output in_ready,

output reg [width-1:0] out_data,
input out_valid
//output out_ready
);


reg [width-1:0] data;
reg full;


assign in_ready = !full || !out_valid;
//assign out_ready = full || !in_ready; 

always_ff@(posedge clk) begin 
if(reset) begin
out_data = 0;
full =1'b0;

end else begin 
if(in_valid && in_ready && !full) begin 
data <= in_data;
full <= 1'b1;

end
else if(out_valid ) begin 
out_data<=data;
full<=1'b0;
end




end
end

endmodule
