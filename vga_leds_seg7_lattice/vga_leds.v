
module vga_leds(
			input wire CLK50MHZ,
			input wire KEY0,
			input wire KEY1,
			output wire [7:0]LED,
			 // outputs:
			output wire hsync,
			output wire vsync,
 
			//high-color test video signal
			output wire [3:0]r,
			output wire [3:0]g,
			output wire [3:0]b
			);
			
wire w_clk_video;
wire w_clk_hdmi;
wire w_locked;

main_pll main_pll_inst(
			.CLKI(CLK50MHZ ),
			.CLKOP(w_clk_video ), 
			.LOCK( w_locked)
			);

reg [47:0]counter;
always @( posedge w_clk_video or negedge KEY0 )
begin
	if( ~KEY0 )
		counter <= 0;
	else
	if( KEY1 )
		counter <= counter+1;
end

display display_inst(
		.reset( ~w_locked ),
		.clk_video( w_clk_video ),
		.red_leds( counter[31:16] ),
		.green_leds( counter[30:15] ),
		.segments( counter[47:16] ),
		.hsync (hsync),
		.vsync (vsync),
 		.r (r),
		.g (g),
		.b (b)
	   );

endmodule
