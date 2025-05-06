`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Ratner Surf Designs
// Engineer: James Ratner
// 
// Create Date: 12/04/2019 04:29:28 PM
// Design Name: 
// Module Name: clk_2n_div_test
// Project Name: 
// Target Devices: 
// Tool  Versions: 
// Description: Divides clock by 2^n. Allows for no clock division
//              or clock division based on fclk_only input. 
// 
//              fclk_only = 1 ==> outputs the input clock signal
//              fclk_only = 0 ==> outputs the divided clock signal
//
// Usage: 
//
//      clk_2n_div_test #(.n(25)) MY_DIV (
//          .clockin   (xxxx), 
//          .fclk_only (1),          
//          .clockout  (xxxx)   );  
// 
// Dependencies: 
// 
// Dependencies: 
// 
// Revision:
// Revision 1.00 - (12-05-2019) File Created
//          1.01 - (12-20-2020) changed paramerer location & comments
// 
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cnter (
   input logic clockin, 
   input logic [5:0] cnt,   
   output logic clockout
   );  
   parameter DIVIDER = 5000; //*divider
    logic [19:0] count = 0;
    logic clockout_reg = 0; 
    logic [19:0] internal;    
    initial begin
        clockout = 0;  // Set the initial value of clockout
    end
    
    always_ff@(posedge clockin) 
    begin 
       internal = DIVIDER * cnt;
       if (count != internal) begin
            count = count + 1; 
       end else begin
            clockout_reg = ~clockout_reg; 
            count = 0;
       end
    end 
	assign clockout = clockout_reg;
endmodule

