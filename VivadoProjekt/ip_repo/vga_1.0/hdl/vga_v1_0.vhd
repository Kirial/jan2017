//timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Niels Smidth
// 
// Create Date: 05/23/2015 09:06:11 PM
// Module Name: vga_driver
// Project Name: CPE439 Oscope
// Target Devices: Zybo
// Tool Versions: 2014.4
// Description: Creates horizontal and vertical sync signals with a 100MHz input clock.
//   Current row and column values are output. If currently inside the screen area, RGB values
//   are permitted through, otherwise they are blocked. 
// 
// Revision:
// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module vga_driver(
    input logic clk,
    output logic[8:0] column,
    output logic[8:0] row,
    input logic red_in,
    input logic green_in,
    input logic blue_in,
    output logic red_out,
    output logic green_out,
    output logic blue_out,
    output logic v_sync,
    output logic h_sync
    );
    
    /***********************************/
    // Pixel Clock Generator Variables
    logic clk_pixel;            // Pixel clock : 25MHz
    logic [1:0] clk_counter;    // Counter for clock division
    // Pixel Clock Generator Initialize
    initial begin
        clk_counter = 0;
        clk_pixel = 0;
    end
    // Pixel Clock Generator
    // Assuming input clock = 100MHz
    // Pixel Clock = 25MHz
    always @(posedge clk) begin
        clk_counter = clk_counter + 1;  // Increment counter
        if (clk_counter == 'd0) begin   // 1 / 4 clock division 
            clk_pixel = 1; 
        end
        else begin
            clk_pixel = 0;
        end
    end
    
 
    /***********************************/    
    // Signal timings for 640 x 480 using 25Mhz pixel clock
    //(-----)(----------)(----)(____)
    // Tbp    Tdisp       Tfp   Tpw    
    // For Horizontal Sync:
    // Tbp = 48 clks = 1.92us
    // Tdisp = 640 clks = 25.6us
    // Tfp = 16 clks = 640ns
    // Tpw = 96 clks = 3.84us
    // Total Tsync = 800 clks = 32us
    
    // For Vertical Sync:
    // Tbp =  29 lines = 928us
    // Tdisp = 480 lines = 15.36ms
    // Tfp =  10 lines = 320us
    // Tpw =  2 lines = 64us
    // Total Tsync = 521 lines = 16.7ms
    
    
    // Sync Signal Generator Variables
    logic [9:0] horiz_counter;      // Counting horizontal pixel clocks
    logic [9:0] vert_counter;       // Counting vertical pixel clocks
    logic end_of_line;              // Signal indicating end of horizontal line
    // Sync Signal Generator Initialize
    initial begin
        horiz_counter = 'd0;    // Location of horizontal screen trace
        vert_counter = 'd0;     // Location of vertical screen trace
    end
    
    // Horiz Sync Signal Generator
    always @(posedge clk) begin
        // Generate end of line signal if counter has counted 800 pixels
        if ( (clk_pixel == 1) && (horiz_counter == 'd799) ) begin
            end_of_line = 1;
        end
        else begin
            end_of_line = 0;
        end        
        // Count up to 800 horizontal pixels
        if( (clk_pixel == 'd1) ) begin  
            if( horiz_counter >= 'd799 ) begin
                horiz_counter = 'd0;
            end 
            else begin
                horiz_counter = horiz_counter + 'd1;
            end
            // H_Sync should be low for 704-799
            if( horiz_counter >= 'd704 ) begin
                h_sync = 0;
            end
            else begin
                h_sync = 1;
            end
        end
    end
    
   
    
    // Vertical Sync Signal Generator
    always @( posedge clk ) begin
        
        if( end_of_line == 1 ) begin
            // Increment vertical counter each end of line
            if( vert_counter >= 'd520 ) begin
                vert_counter = 'd0;
            end
            else begin
                vert_counter = vert_counter + 'd1;
            end
            // V_Sync should be low from 519-520
            if( vert_counter > 'd518 ) begin
                v_sync = 0;
            end
            else begin
                v_sync = 1;
            end
        end
    end
    
    
    logic in_horiz_range;
    logic in_vert_range;
    // Generate pixel values from present screen trace location
    always_comb begin
        // First 48 pixels are back porch, next 640 pixels are displayed
        // I only want my display to be 512 wide, so there are an additional
        // (640 - 512)/2 = 64 pixels that shouldn't be displayed on each side
        // Pixels start at (BP + 64) = 48 + 64 = 112
        // Pixels end at 112 + 512 = 624 (using <= so it is 623)
        if ( (horiz_counter >= 'd112) && (horiz_counter <= 'd623) ) begin
            column = horiz_counter - 'd112;
            in_horiz_range = 1;
        end
        else begin
            column = 'd0;
            in_horiz_range = 0;
        end
    
        // First 29 lines are back porch, next 480 lines are displayed
        if ( (vert_counter >= 'd29) && (vert_counter <= 'd508) ) begin
            row = vert_counter - 'd29;
            in_vert_range = 1;
        end
        else begin
            row = 'd0;
            in_vert_range = 0;
        end    
    
        // Assign output values if current pixel is in display range
        if( (in_vert_range == 1) && (in_horiz_range == 1) ) begin
            red_out = red_in;
            blue_out = blue_in;
            green_out = green_in;
        end
        else begin
            red_out = 0;
            blue_out = 0;
            green_out = 0;
        end
    
    end
    
endmodule
