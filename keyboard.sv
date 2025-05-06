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
        input [11:0] buttons,
        output freak_out,
        output freak_out2,
        output freak_out3
        
    );
    logic [11:0] button, button2, button3;
    logic [5:0] note, note2, note3;
    logic BTN;
    logic DB_BTN;
    
    note_splitter notey(
        .buttons     (buttons),
        .button       (button),
        .button2     (button2),
        .button3     (button3)
        );
        
    decoder keyboard_decoder (
        .button       (button),
        .note           (note)
    );
    decoder keyboard_decoder2 (
        .button      (button2),
        .note           (note)
    );
    decoder keyboard_decoder3 (
        .button      (button3),
        .note           (note)
    );
    
    cnter MY_DIV (
          .cnt         (note),
          .clockin      (CLK),         
          .clockout  (button) 
          );  
    cnter MY_DIV2 (
          .cnt        (note2),
          .clockin      (CLK),         
          .clockout  (button2) 
          );  
    cnter MY_DIV3 (
          .cnt          (note3),
          .clockin        (CLK),         
          .clockout    (button3) 
          );        
    //one shot
    //debouncer
    //make into sin wave
    //
endmodule
