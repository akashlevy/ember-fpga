module rram_top_wrapper (
  mclk_pause,
  rst_n,
  rram_busy,
  sclk,
  sc,
  mosi,
  miso,
//  aclk,
//  bl_en,
//  bleed_en,
//  bsl_dac_config,
//  bsl_dac_en,
//  clamp_ref,
//  di,
//  read_dac_config,
//  read_dac_en,
//  read_ref,
//  rram_addr,
//  sa_clk,
//  sa_en,
//  set_rst,
//  sl_en,
//  we,
//  wl_dac_config,
//  wl_dac_en,
//  wl_en,
  sa_do,
  sa_rdy
);

input wire mclk_pause;
input wire rst_n;
output wire rram_busy;
input wire sclk;
input wire sc;
input wire mosi;
output wire miso;
//output wire aclk;
//output wire bl_en;
//output wire bleed_en;
//output wire [4 : 0] bsl_dac_config;
//output wire bsl_dac_en;
//output wire [5 : 0] clamp_ref;
//output wire [47 : 0] di;
//output wire [3 : 0] read_dac_config;
//output wire read_dac_en;
//output wire [5 : 0] read_ref;
//output wire [15 : 0] rram_addr;
//output wire sa_clk;
//output wire sa_en;
//output wire set_rst;
//output wire sl_en;
//output wire we;
//output wire [7 : 0] wl_dac_config;
//output wire wl_dac_en;
//output wire wl_en;
input wire [47 : 0] sa_do;
input wire sa_rdy;

  rram_top inst (
    .mclk_pause(mclk_pause),
    .rst_n(rst_n),
    .rram_busy(rram_busy),
    .sclk(sclk),
    .sc(sc),
    .mosi(mosi),
    .miso(miso),
//    .aclk(aclk),
//    .bl_en(bl_en),
//    .bleed_en(bleed_en),
//    .bsl_dac_config(bsl_dac_config),
//    .bsl_dac_en(bsl_dac_en),
//    .clamp_ref(clamp_ref),
//    .di(di),
//    .read_dac_config(read_dac_config),
//    .read_dac_en(read_dac_en),
//    .read_ref(read_ref),
//    .rram_addr(rram_addr),
//    .sa_clk(sa_clk),
//    .sa_en(sa_en),
//    .set_rst(set_rst),
//    .sl_en(sl_en),
//    .we(we),
//    .wl_dac_config(wl_dac_config),
//    .wl_dac_en(wl_dac_en),
//    .wl_en(wl_en),
    .sa_do(sa_do),
    .sa_rdy(sa_rdy)
  );
endmodule
