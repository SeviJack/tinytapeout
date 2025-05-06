`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 10:33:08 AM
// Design Name: 
// Module Name: Switch_Decoder
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


module Switch_Decoder(
    input [11:0] switches,
    output logic [11:0] note_1,
    output logic [11:0] note_2,
    output logic [11:0] note_3
    );
   
    integer i;
    integer count;

    always_comb begin
       // Initialize all note outputs to zero
       note_1 = 12'b0;
       note_2 = 12'b0;
       note_3 = 12'b0;
       count = 0;

     for (i = 0; i < 12; i = i + 1) begin
            if (switches[i] == 1'b1) begin
                case (count)
                    0: note_1 = 12'b1 << (11 - i); // place 1 at position
                    1: note_2 = 12'b1 << (11 - i);
                    2: note_3 = 12'b1 << (11 - i);
                    default: ; // Ignore any after 3
                endcase
                count = count + 1;
            end
        end
    end

    
endmodule
