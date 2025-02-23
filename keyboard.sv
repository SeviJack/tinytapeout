`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2025 12:39:36 PM
// Design Name: 
// Module Name: keyboard
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


module keyboard(
        input CLK,
        input key
    );
    logic [5:0] note;
    logic BTN;
    logic DB_BTN;
    decoder keyboard_decoder (
        .key(key),
        .note(note)
    );
    
    debounce_one_shot debouncer (
        .CLK(CLK),
        .BTN(BTN),
        .DB_BTN(DB_BTN)
    );
    //one shot
    //debouncer
    //make into sin wave
    //
endmodule
