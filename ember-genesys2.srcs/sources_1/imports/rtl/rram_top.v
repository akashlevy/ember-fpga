// RRAM Top Module
module rram_top (
  /////////////
  // TO PADS //
  /////////////

  // Clock enable, reset
  input mclk_pause,
  input rst_n,

  // RRAM busy indicator
  output wire rram_busy,

  // SPI interface (WONTFIX: could combine mosi/miso into one pad)
  input       sclk,       // (I) SPI serial clock
  input       sc,         // (I) SPI chip select
  input       mosi,       // (I) SPI master out, slave in
  output wire miso,       // (O) SPI master in, slave out data
  
  // Output from analog block
  output aclk,
  output bl_en,
  output bleed_en,
  output [`BSL_DAC_BITS_N-1:0] bsl_dac_config,
  output bsl_dac_en,
  output [`ADC_BITS_N-1:0] clamp_ref,
  output [`WORD_SIZE-1:0] di,
  output [`READ_DAC_BITS_N-1:0] read_dac_config,
  output read_dac_en,
  output [`ADC_BITS_N-1:0] read_ref,
  output [`ADDR_BITS_N-1:0] rram_addr,
  output sa_clk,
  output sa_en,
  output set_rst,
  output sl_en,
  output we,
  output [`WL_DAC_BITS_N-1:0] wl_dac_config,
  output wl_dac_en,
  output wl_en,

  // Input from analog block
  input wire[`WORD_SIZE-1:0] sa_do,
  input wire sa_rdy
  );

  // Clock, reset, busy wires
    wire mclk_pause;
    wire mclk;
    wire rst_n;
    wire rram_busy;
  // SPI wires
    wire sclk;
    wire sc;
    wire mosi;
    wire miso;
    wire miso_oe_n;
  // SPI to/from FSM wires
    wire                                      fsm_go;
    wire    [`OP_CODE_BITS_N-1:0]             opcode;
    wire                                      use_multi_addrs;

    wire    [`ADDR_BITS_N-1:0]                address_start;
    wire    [`ADDR_BITS_N-1:0]                address_stop;
    wire    [`ADDR_BITS_N-1:0]                address_step;
    wire    [`MAX_ATTEMPTS_BITS_N-1:0]        max_attempts;
    wire                                      use_ecc;
    wire    [`PROG_CNFG_RANGES_LOG2_N-1:0]    num_levels;
    wire    [`BSL_DAC_BITS_N-1:0]             bl_dac_set_lvl_cycle;
    wire    [`WL_DAC_BITS_N-1:0]              wl_dac_set_lvl_cycle;
    wire    [`PW_BITS_N-1:0]                  pw_set_cycle;
    wire    [`BSL_DAC_BITS_N-1:0]             sl_dac_rst_lvl_cycle;
    wire    [`WL_DAC_BITS_N-1:0]              wl_dac_rst_lvl_cycle;
    wire    [`PW_BITS_N-1:0]                  pw_rst_cycle;
    wire                                      set_first;
    wire    [`WORD_SIZE-1:0]                  di_init_mask;
    wire                                      ignore_failures;
    wire                                      all_dacs_on;
    wire    [`SETUP_CYC_BITS_N-1:0]           idle_to_init_write_setup_cycles;
    wire    [`SETUP_CYC_BITS_N-1:0]           idle_to_init_read_setup_cycles;
    wire    [`SETUP_CYC_BITS_N-1:0]           read_to_init_write_setup_cycles;
    wire    [`SETUP_CYC_BITS_N-1:0]           write_to_init_read_setup_cycles;
    wire    [`SETUP_CYC_BITS_N-1:0]           step_read_setup_cycles;
    wire    [`SETUP_CYC_BITS_N-1:0]           step_write_setup_cycles;
    wire    [`SETUP_CYC_BITS_N-1:0]           post_read_setup_cycles;
    wire    [`ADC_BITS_N-1:0]                 adc_clamp_ref_lvl;
    wire    [`READ_DAC_BITS_N-1:0]            adc_read_dac_lvl;
    wire    [`ADC_BITS_N-1:0]                 adc_upper_read_ref_lvl;
    wire    [`ADC_BITS_N-1:0]                 adc_lower_write_ref_lvl;
    wire    [`ADC_BITS_N-1:0]                 adc_upper_write_ref_lvl;
    wire    [`BSL_DAC_BITS_N-1:0]             bl_dac_set_lvl_start;
    wire    [`BSL_DAC_BITS_N-1:0]             bl_dac_set_lvl_stop;
    wire    [`BSL_DAC_BITS_N-1:0]             bl_dac_set_lvl_step;
    wire    [`WL_DAC_BITS_N-1:0]              wl_dac_set_lvl_start;
    wire    [`WL_DAC_BITS_N-1:0]              wl_dac_set_lvl_stop;
    wire    [`WL_DAC_BITS_N-1:0]              wl_dac_set_lvl_step;
    wire    [`PW_BITS_N-1:0]                  pw_set_start;
    wire    [`PW_BITS_N-1:0]                  pw_set_stop;
    wire    [`PW_BITS_N-1:0]                  pw_set_step;
    wire    [`LOOP_BITS_N-1:0]                loop_order_set;
    wire    [`BSL_DAC_BITS_N-1:0]             sl_dac_rst_lvl_start;
    wire    [`BSL_DAC_BITS_N-1:0]             sl_dac_rst_lvl_stop;
    wire    [`BSL_DAC_BITS_N-1:0]             sl_dac_rst_lvl_step;
    wire    [`WL_DAC_BITS_N-1:0]              wl_dac_rst_lvl_start;
    wire    [`WL_DAC_BITS_N-1:0]              wl_dac_rst_lvl_stop;
    wire    [`WL_DAC_BITS_N-1:0]              wl_dac_rst_lvl_step;
    wire    [`PW_BITS_N-1:0]                  pw_rst_start;
    wire    [`PW_BITS_N-1:0]                  pw_rst_stop;
    wire    [`PW_BITS_N-1:0]                  pw_rst_step;
    wire    [`LOOP_BITS_N-1:0]                loop_order_rst;

    wire    [`PROG_CNFG_RANGES_LOG2_N-1:0]    rangei;
    wire    [`FSM_FULL_STATE_BITS_N-1:0]      fsm_bits;
    wire    [`FSM_DIAG_BITS_N-1:0]            diag_bits;
  // Analog block wires
    wire aclk;
    wire bl_en;
    wire bleed_en;
    wire [`BSL_DAC_BITS_N-1:0] bsl_dac_config;
    wire bsl_dac_en;
    wire [`ADC_BITS_N-1:0] clamp_ref;
    wire [`WORD_SIZE-1:0] di;
    wire [`READ_DAC_BITS_N-1:0] read_dac_config;
    wire read_dac_en;
    wire [`ADC_BITS_N-1:0] read_ref;
    wire [`ADDR_BITS_N-1:0] rram_addr;
    wire sa_clk;
    wire sa_en;
    wire set_rst;
    wire sl_en;
    wire we;
    wire [`WL_DAC_BITS_N-1:0] wl_dac_config;
    wire wl_dac_en;
    wire wl_en;
    wire [`WORD_SIZE-1:0] sa_do;
    wire sa_rdy;

  // SPI interface to RRAM
  spi_slave_rram u_spi_slave_rram (
    .rst_n(rst_n),

    .sclk(sclk),
    .sc(sc),
    .mosi(mosi),
    .miso(miso),
    .miso_oe_n(miso_oe_n),

    .fsm_go(fsm_go),
    .opcode(opcode),
    .use_multi_addrs(use_multi_addrs),
    
    .address_start(address_start),
    .address_stop(address_stop),
    .address_step(address_step),

    .max_attempts(max_attempts),
    .use_ecc(use_ecc),
    .num_levels(num_levels),
    .bl_dac_set_lvl_cycle(bl_dac_set_lvl_cycle),
    .wl_dac_set_lvl_cycle(wl_dac_set_lvl_cycle),
    .pw_set_cycle(pw_set_cycle),
    .sl_dac_rst_lvl_cycle(sl_dac_rst_lvl_cycle),
    .wl_dac_rst_lvl_cycle(wl_dac_rst_lvl_cycle),
    .pw_rst_cycle(pw_rst_cycle),
    .set_first(set_first),
    .di_init_mask(di_init_mask),
    .ignore_failures(ignore_failures),
    .all_dacs_on(all_dacs_on),
    .idle_to_init_write_setup_cycles(idle_to_init_write_setup_cycles),
    .idle_to_init_read_setup_cycles(idle_to_init_read_setup_cycles),
    .read_to_init_write_setup_cycles(read_to_init_write_setup_cycles),
    .write_to_init_read_setup_cycles(write_to_init_read_setup_cycles),
    .step_read_setup_cycles(step_read_setup_cycles),
    .step_write_setup_cycles(step_write_setup_cycles),
    .post_read_setup_cycles(post_read_setup_cycles),

    .adc_clamp_ref_lvl(adc_clamp_ref_lvl),
    .adc_read_dac_lvl(adc_read_dac_lvl),
    .adc_upper_read_ref_lvl(adc_upper_read_ref_lvl),
    .adc_lower_write_ref_lvl(adc_lower_write_ref_lvl),
    .adc_upper_write_ref_lvl(adc_upper_write_ref_lvl),
    .bl_dac_set_lvl_start(bl_dac_set_lvl_start),
    .bl_dac_set_lvl_stop(bl_dac_set_lvl_stop),
    .bl_dac_set_lvl_step(bl_dac_set_lvl_step),
    .wl_dac_set_lvl_start(wl_dac_set_lvl_start),
    .wl_dac_set_lvl_stop(wl_dac_set_lvl_stop),
    .wl_dac_set_lvl_step(wl_dac_set_lvl_step),
    .pw_set_start(pw_set_start),
    .pw_set_stop(pw_set_stop),
    .pw_set_step(pw_set_step),
    .loop_order_set(loop_order_set),
    .sl_dac_rst_lvl_start(sl_dac_rst_lvl_start),
    .sl_dac_rst_lvl_stop(sl_dac_rst_lvl_stop),
    .sl_dac_rst_lvl_step(sl_dac_rst_lvl_step),
    .wl_dac_rst_lvl_start(wl_dac_rst_lvl_start),
    .wl_dac_rst_lvl_stop(wl_dac_rst_lvl_stop),
    .wl_dac_rst_lvl_step(wl_dac_rst_lvl_step),
    .pw_rst_start(pw_rst_start),
    .pw_rst_stop(pw_rst_stop),
    .pw_rst_step(pw_rst_step),
    .loop_order_rst(loop_order_rst),

    .rangei(rangei),
    .fsm_bits(fsm_bits),
    .diag_bits(diag_bits),

    .read_data_bits(read_data_bits),
    .write_data_bits(write_data_bits_no_ecc)
  );

  // Digital control FSM
  fsm u_fsm(
    .mclk(mclk),
    .rst_n(rst_n),

    .rram_busy(rram_busy),

    .address_start(address_start),
    .address_stop(address_stop),
    .address_step(address_step),
    .write_data_bits(write_data_bits),
    .read_data_bits(read_data_bits_no_ecc),
    .max_attempts(max_attempts),
    // .use_ecc(use_ecc),
    .num_levels(num_levels),
    .bl_dac_set_lvl_cycle(bl_dac_set_lvl_cycle),
    .wl_dac_set_lvl_cycle(wl_dac_set_lvl_cycle),
    .pw_set_cycle(pw_set_cycle),
    .sl_dac_rst_lvl_cycle(sl_dac_rst_lvl_cycle),
    .wl_dac_rst_lvl_cycle(wl_dac_rst_lvl_cycle),
    .pw_rst_cycle(pw_rst_cycle),
    .set_first(set_first),
    .di_init_mask(di_init_mask),
    .ignore_failures(ignore_failures),
    .all_dacs_on(all_dacs_on),
    .idle_to_init_write_setup_cycles(idle_to_init_write_setup_cycles),
    .idle_to_init_read_setup_cycles(idle_to_init_read_setup_cycles),
    .read_to_init_write_setup_cycles(read_to_init_write_setup_cycles),
    .write_to_init_read_setup_cycles(write_to_init_read_setup_cycles),
    .step_read_setup_cycles(step_read_setup_cycles),
    .step_write_setup_cycles(step_write_setup_cycles),
    .post_read_setup_cycles(post_read_setup_cycles),
    .adc_clamp_ref_lvl(adc_clamp_ref_lvl),
    .adc_read_dac_lvl(adc_read_dac_lvl),
    .adc_upper_read_ref_lvl(adc_upper_read_ref_lvl),
    .adc_lower_write_ref_lvl(adc_lower_write_ref_lvl),
    .adc_upper_write_ref_lvl(adc_upper_write_ref_lvl),
    .bl_dac_set_lvl_start(bl_dac_set_lvl_start),
    .bl_dac_set_lvl_stop(bl_dac_set_lvl_stop),
    .bl_dac_set_lvl_step(bl_dac_set_lvl_step),
    .wl_dac_set_lvl_start(wl_dac_set_lvl_start),
    .wl_dac_set_lvl_stop(wl_dac_set_lvl_stop),
    .wl_dac_set_lvl_step(wl_dac_set_lvl_step),
    .pw_set_start(pw_set_start),
    .pw_set_stop(pw_set_stop),
    .pw_set_step(pw_set_step),
    .loop_order_set(loop_order_set),
    .sl_dac_rst_lvl_start(sl_dac_rst_lvl_start),
    .sl_dac_rst_lvl_stop(sl_dac_rst_lvl_stop),
    .sl_dac_rst_lvl_step(sl_dac_rst_lvl_step),
    .wl_dac_rst_lvl_start(wl_dac_rst_lvl_start),
    .wl_dac_rst_lvl_stop(wl_dac_rst_lvl_stop),
    .wl_dac_rst_lvl_step(wl_dac_rst_lvl_step),
    .pw_rst_start(pw_rst_start),
    .pw_rst_stop(pw_rst_stop),
    .pw_rst_step(pw_rst_step),
    .loop_order_rst(loop_order_rst),
    .fsm_go(fsm_go),
    .opcode(opcode),
    .use_multi_addrs(use_multi_addrs),
    
    .rangei(rangei),
    .fsm_bits(fsm_bits),
    .diag_bits(diag_bits),

    .sa_do(sa_do),
    .sa_rdy(sa_rdy),
    
    .aclk(aclk),
    .bl_en(bl_en),
    .bleed_en(bleed_en),
    .bsl_dac_config(bsl_dac_config),
    .bsl_dac_en(bsl_dac_en),
    .clamp_ref(clamp_ref),
    .di(di),
    .read_dac_config(read_dac_config),
    .read_dac_en(read_dac_en),
    .read_ref(read_ref),
    .rram_addr(rram_addr),
    .sa_clk(sa_clk),
    .sa_en(sa_en),
    .set_rst(set_rst),
    .sl_en(sl_en),
    .we(we),
    .wl_dac_config(wl_dac_config),
    .wl_dac_en(wl_dac_en),
    .wl_en(wl_en)
  );
endmodule
