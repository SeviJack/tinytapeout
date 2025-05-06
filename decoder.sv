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
    input logic [11:0] button,
    output logic [5:0] note
    );
    always_comb begin
        case (button)
            12'b000000000001: begin //C4
                note = 6'b0100110;
            end
            
            12'b000000000010: begin //C#
                note = 6'b100100;
            end
            
            12'b000000000100: begin //D
                note = 6'b100010;
            end
            
            12'b000000001000: begin //D#
                note = 6'b100000;
            end
            
            12'b000000010000: begin //E
                note = 6'b011110;
            end
            
            12'b000000100000: begin //F
                note = 6'b011101;
            end
            
            12'b000001000000: begin //F#
                note = 6'b011011;
            end
            
            12'b000010000000: begin //G
                note = 6'b011010;
            end
            
            12'b000100000000: begin //G#
                note = 6'b011000;
            end
            
            12'b001000000000: begin //A
                note = 6'b010111;
            end
            
            12'b010000000000: begin //A#
                note = 6'b010101;
            end
            
            12'b100000000000: begin //B
                note = 6'b010100;
            end
            default: begin 
                note = 6'b000000;
            end
        endcase
    end
endmodule
