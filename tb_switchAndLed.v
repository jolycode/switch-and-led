`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:30:05 10/20/2022 
// Design Name: 
// Module Name:    tb_switchAndLed 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module tb_switchAndLed();

	reg [7:0] switch_tb;
	wire [7:0] led_tb;
	
	switchAndLed uut(
		.switch(switch_tb), 
		.led(led_tb)
	);

	initial begin
		switch_tb = 0;
		#10;
		switch_tb = 255;
		#10;
		switch_tb = 8'b11001101;
		#10;
		repeat(100)begin
			switch_tb = $random;
			#10;
		end
		$finish;
	end

endmodule
