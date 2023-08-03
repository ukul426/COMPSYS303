
module nios2_system (
	clk_clk,
	keys_external_connection_export,
	lcd_external_RS,
	lcd_external_RW,
	lcd_external_data,
	lcd_external_E,
	leds_green_external_connection_export,
	leds_red_external_connection_export,
	reset_reset_n,
	sdram_pll_sdram_clk_clk,
	sdram_wire_addr,
	sdram_wire_ba,
	sdram_wire_cas_n,
	sdram_wire_cke,
	sdram_wire_cs_n,
	sdram_wire_dq,
	sdram_wire_dqm,
	sdram_wire_ras_n,
	sdram_wire_we_n,
	switches_external_connection_export,
	uart_external_connection_rxd,
	uart_external_connection_txd);	

	input		clk_clk;
	input	[2:0]	keys_external_connection_export;
	output		lcd_external_RS;
	output		lcd_external_RW;
	inout	[7:0]	lcd_external_data;
	output		lcd_external_E;
	output	[8:0]	leds_green_external_connection_export;
	output	[17:0]	leds_red_external_connection_export;
	input		reset_reset_n;
	output		sdram_pll_sdram_clk_clk;
	output	[11:0]	sdram_wire_addr;
	output	[1:0]	sdram_wire_ba;
	output		sdram_wire_cas_n;
	output		sdram_wire_cke;
	output		sdram_wire_cs_n;
	inout	[15:0]	sdram_wire_dq;
	output	[1:0]	sdram_wire_dqm;
	output		sdram_wire_ras_n;
	output		sdram_wire_we_n;
	input	[17:0]	switches_external_connection_export;
	input		uart_external_connection_rxd;
	output		uart_external_connection_txd;
endmodule
