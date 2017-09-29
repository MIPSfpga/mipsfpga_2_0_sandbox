`include "mfp_ahb_lite_matrix_config.vh"

//`define ENABLE_ADC
//`define ENABLE_AUD
//`define ENABLE_CLOCK2
//`define ENABLE_CLOCK3
//`define ENABLE_CLOCK4
`define ENABLE_CLOCK
//`define ENABLE_DRAM
//`define ENABLE_FAN
`define ENABLE_FPGA
`define ENABLE_GPIO
`define ENABLE_HEX
//`define ENABLE_HPS
//`define ENABLE_IRDA
`define ENABLE_KEY
`define ENABLE_LEDR
//`define ENABLE_PS2
//`define ENABLE_TD
//`define ENABLE_VGA
`define ENABLE_SW

module de1_soc
(
    `ifdef ENABLE_ADC
    output             ADC_CONVST,
    output             ADC_DIN,
    input              ADC_DOUT,
    output             ADC_SCLK,
    `endif

    `ifdef ENABLE_AUD
    input              AUD_ADCDAT,
    inout              AUD_ADCLRCK,
    inout              AUD_BCLK,
    output             AUD_DACDAT,
    inout              AUD_DACLRCK,
    output             AUD_XCK,
    `endif

    `ifdef ENABLE_CLOCK2
    input              CLOCK2_50,
    `endif

    `ifdef ENABLE_CLOCK3
    input              CLOCK3_50,
    `endif

    `ifdef ENABLE_CLOCK4
    input              CLOCK4_50,
    `endif

    `ifdef ENABLE_CLOCK
    input              CLOCK_50,
    `endif

    `ifdef ENABLE_DRAM
    output      [12:0] DRAM_ADDR,
    output      [ 1:0] DRAM_BA,
    output             DRAM_CAS_N,
    output             DRAM_CKE,
    output             DRAM_CLK,
    output             DRAM_CS_N,
    inout       [15:0] DRAM_DQ,
    output             DRAM_LDQM,
    output             DRAM_RAS_N,
    output             DRAM_UDQM,
    output             DRAM_WE_N,
    `endif

    `ifdef ENABLE_FAN
    output             FAN_CTRL,
    `endif

    `ifdef ENABLE_FPGA
    output             FPGA_I2C_SCLK,
    inout              FPGA_I2C_SDAT,
    `endif

    `ifdef ENABLE_GPIO
    inout       [35:0] GPIO_0,
    inout       [35:0] GPIO_1,
    `endif

    `ifdef ENABLE_HEX
    output      [ 6:0] HEX0,
    output      [ 6:0] HEX1,
    output      [ 6:0] HEX2,
    output      [ 6:0] HEX3,
    output      [ 6:0] HEX4,
    output      [ 6:0] HEX5,
    `endif

    `ifdef ENABLE_HPS
    inout              HPS_CONV_USB_N,
    output      [14:0] HPS_DDR3_ADDR,
    output      [ 2:0] HPS_DDR3_BA,
    output             HPS_DDR3_CAS_N,
    output             HPS_DDR3_CKE,
    output             HPS_DDR3_CK_N,
    output             HPS_DDR3_CK_P,
    output             HPS_DDR3_CS_N,
    output      [ 3:0] HPS_DDR3_DM,
    inout       [31:0] HPS_DDR3_DQ,
    inout       [ 3:0] HPS_DDR3_DQS_N,
    inout       [ 3:0] HPS_DDR3_DQS_P,
    output             HPS_DDR3_ODT,
    output             HPS_DDR3_RAS_N,
    output             HPS_DDR3_RESET_N,
    input              HPS_DDR3_RZQ,
    output             HPS_DDR3_WE_N,
    output             HPS_ENET_GTX_CLK,
    inout              HPS_ENET_INT_N,
    output             HPS_ENET_MDC,
    inout              HPS_ENET_MDIO,
    input              HPS_ENET_RX_CLK,
    input       [ 3:0] HPS_ENET_RX_DATA,
    input              HPS_ENET_RX_DV,
    output      [ 3:0] HPS_ENET_TX_DATA,
    output             HPS_ENET_TX_EN,
    inout       [ 3:0] HPS_FLASH_DATA,
    output             HPS_FLASH_DCLK,
    output             HPS_FLASH_NCSO,
    inout              HPS_GSENSOR_INT,
    inout              HPS_I2C1_SCLK,
    inout              HPS_I2C1_SDAT,
    inout              HPS_I2C2_SCLK,
    inout              HPS_I2C2_SDAT,
    inout              HPS_I2C_CONTROL,
    inout              HPS_KEY,
    inout              HPS_LED,
    inout              HPS_LTC_GPIO,
    output             HPS_SD_CLK,
    inout              HPS_SD_CMD,
    inout       [ 3:0] HPS_SD_DATA,
    output             HPS_SPIM_CLK,
    input              HPS_SPIM_MISO,
    output             HPS_SPIM_MOSI,
    inout              HPS_SPIM_SS,
    input              HPS_UART_RX,
    output             HPS_UART_TX,
    input              HPS_USB_CLKOUT,
    inout       [ 7:0] HPS_USB_DATA,
    input              HPS_USB_DIR,
    input              HPS_USB_NXT,
    output             HPS_USB_STP,
    `endif

    `ifdef ENABLE_IRDA
    input              IRDA_RXD,
    output             IRDA_TXD,
    `endif

    `ifdef ENABLE_KEY
    input       [ 3:0] KEY,
    `endif

    `ifdef ENABLE_LEDR
    output      [ 9:0] LEDR,
    `endif

    `ifdef ENABLE_PS2
    inout              PS2_CLK,
    inout              PS2_CLK2,
    inout              PS2_DAT,
    inout              PS2_DAT2,
    `endif

    `ifdef ENABLE_TD
    input              TD_CLK27,
    input       [ 7:0] TD_DATA,
    input              TD_HS,
    output             TD_RESET_N,
    input              TD_VS,
    `endif

    `ifdef ENABLE_VGA
    output      [ 7:0] VGA_B,
    output             VGA_BLANK_N,
    output             VGA_CLK,
    output      [ 7:0] VGA_G,
    output             VGA_HS,
    output      [ 7:0] VGA_R,
    output             VGA_SYNC_N,
    output             VGA_VS,
    `endif

    `ifdef ENABLE_SW
    input       [ 9:0] SW
    `endif
);

    wire clk;

    `ifdef MFP_USE_SLOW_CLOCK_AND_CLOCK_MUX

    wire       muxed_clk;
    wire [1:0] sw_db;

    mfp_multi_switch_or_button_sync_and_debouncer
    # (.WIDTH (2))
    mfp_multi_switch_or_button_sync_and_debouncer
    (   
        .clk    ( CLOCK_50 ),
        .sw_in  ( SW [1:0] ),
        .sw_out ( sw_db    )
    );

    mfp_clock_divider_50_MHz_to_25_MHz_12_Hz_0_75_Hz 
    mfp_clock_divider_50_MHz_to_25_MHz_12_Hz_0_75_Hz
    (
        .clki    ( CLOCK_50  ),
        .sel_lo  ( sw_db [0] ),
        .sel_mid ( sw_db [1] ),
        .clko    ( muxed_clk )
    );

    global gclk
    (
        .in     ( muxed_clk  ), 
        .out    ( clk        )
    );

    `else

    assign clk = CLOCK_50;

    `endif

    wire [`MFP_N_SWITCHES          - 1:0] IO_Switches;
    wire [`MFP_N_BUTTONS           - 1:0] IO_Buttons;
    wire [`MFP_N_RED_LEDS          - 1:0] IO_RedLEDs;
    wire [`MFP_N_GREEN_LEDS        - 1:0] IO_GreenLEDs;
    wire [`MFP_7_SEGMENT_HEX_WIDTH - 1:0] IO_7_SegmentHEX;

    assign IO_Switches = { { `MFP_N_SWITCHES - 10 { 1'b0 } } ,   SW  [9:0] };
    assign IO_Buttons  = { { `MFP_N_BUTTONS  -  4 { 1'b0 } } , ~ KEY [3:0] };

    assign LEDR = IO_GreenLEDs [9:0];

    wire [31:0] HADDR, HRDATA, HWDATA;
    wire        HWRITE;

    mfp_system mfp_system
    (
        .SI_ClkIn         (   clk             ),
        .SI_Reset         ( ~ KEY [0]         ),
                          
        .HADDR            (   HADDR           ),
        .HRDATA           (   HRDATA          ),
        .HWDATA           (   HWDATA          ),
        .HWRITE           (   HWRITE          ),
                          
        .EJ_TRST_N_probe  (   GPIO_1 [22]     ),
        .EJ_TDI           (   GPIO_1 [21]     ),
        .EJ_TDO           (   GPIO_1 [19]     ),
        .EJ_TMS           (   GPIO_1 [23]     ),
        .EJ_TCK           (   GPIO_1 [17]     ),
        .SI_ColdReset     ( ~ GPIO_1 [20]     ),
        .EJ_DINT          (   1'b0            ),

        .IO_Switches      (   IO_Switches     ),
        .IO_Buttons       (   IO_Buttons      ),
        .IO_RedLEDs       (   IO_RedLEDs      ),
        .IO_GreenLEDs     (   IO_GreenLEDs    ), 
        .IO_7_SegmentHEX  (   IO_7_SegmentHEX ),
                                              
        .UART_RX          (   GPIO_1 [31]     ),
        .UART_TX          (   /* TODO */      ),

        .SPI_CS           (   GPIO_1 [34]     ),
        .SPI_SCK          (   GPIO_1 [28]     ),
        .SPI_SDO          (   GPIO_1 [30]     )
    );

    assign GPIO_1 [15] = 1'b0;
    assign GPIO_1 [14] = 1'b0;
    assign GPIO_1 [13] = 1'b1;
    assign GPIO_1 [12] = 1'b1;

    assign GPIO_1 [26] = 1'b0;

    mfp_single_digit_seven_segment_display digit_5 ( IO_7_SegmentHEX [23:20] , HEX5 );
    mfp_single_digit_seven_segment_display digit_4 ( IO_7_SegmentHEX [19:16] , HEX4 );
    mfp_single_digit_seven_segment_display digit_3 ( IO_7_SegmentHEX [15:12] , HEX3 );
    mfp_single_digit_seven_segment_display digit_2 ( IO_7_SegmentHEX [11: 8] , HEX2 );
    mfp_single_digit_seven_segment_display digit_1 ( IO_7_SegmentHEX [ 7: 4] , HEX1 );
    mfp_single_digit_seven_segment_display digit_0 ( IO_7_SegmentHEX [ 3: 0] , HEX0 );

endmodule
