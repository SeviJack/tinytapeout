`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2025 12:47:08 PM
// Design Name: 
// Module Name: decoder
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


module decoder(
    input logic [3:0] key,
    output logic [5:0] note
    );
    always_comb begin
        case (key)
            4'b0000: begin //C4
                note = 6'b0100110;
            end
            
            4'b0001: begin //C#
                note = 6'b100100;
            end
            
            4'b0010: begin //D
                note = 6'b100010;
            end
            
            4'b0011: begin //D#
                note = 6'b100000;
            end
            
            4'b0100: begin //E
                note = 6'b011110;
            end
            
            4'b0101: begin //F
                note = 6'b011110;
            end
            
            4'b0110: begin //F#
                note = 6'b011011;
            end
            
            4'b0111: begin //G
                note = 6'b011010;
            end
            
            4'b1000: begin //G#
                note = 6'b011000;
            end
            
            4'b1001: begin //A
                note = 6'b010111;
            end
            
            4'b1010: begin //A#
                note = 6'b010101;
            end
            
            4'b1011: begin //B
                note = 6'b010100;
            end
        endcase
    end
endmodule
