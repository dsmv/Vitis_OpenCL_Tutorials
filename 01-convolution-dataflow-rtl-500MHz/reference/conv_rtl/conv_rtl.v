// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.
module conv_rtl #(
  parameter integer C_S_AXI_CONTROL_ADDR_WIDTH = 12,
  parameter integer C_S_AXI_CONTROL_DATA_WIDTH = 32,
  parameter integer C_GMEM1_ADDR_WIDTH         = 64,
  parameter integer C_GMEM1_DATA_WIDTH         = 64,
  parameter integer C_GMEM2_ADDR_WIDTH         = 64,
  parameter integer C_GMEM2_DATA_WIDTH         = 64,
  parameter integer C_GMEM3_ADDR_WIDTH         = 64,
  parameter integer C_GMEM3_DATA_WIDTH         = 64
)
(
  // System Signals
  input  wire                                    ap_clk               ,
  input  wire                                    ap_rst_n             ,
  input  wire                                    ap_clk_2             ,
  input  wire                                    ap_rst_n_2           ,
  //  Note: A minimum subset of AXI4 memory mapped signals are declared.  AXI
  // signals omitted from these interfaces are automatically inferred with the
  // optimal values for Xilinx accleration platforms.  This allows Xilinx AXI4 Interconnects
  // within the system to be optimized by removing logic for AXI4 protocol
  // features that are not necessary. When adapting AXI4 masters within the RTL
  // kernel that have signals not declared below, it is suitable to add the
  // signals to the declarations below to connect them to the AXI4 Master.
  // 
  // List of ommited signals - effect
  // -------------------------------
  // ID - Transaction ID are used for multithreading and out of order
  // transactions.  This increases complexity. This saves logic and increases Fmax
  // in the system when ommited.
  // SIZE - Default value is log2(data width in bytes). Needed for subsize bursts.
  // This saves logic and increases Fmax in the system when ommited.
  // BURST - Default value (0b01) is incremental.  Wrap and fixed bursts are not
  // recommended. This saves logic and increases Fmax in the system when ommited.
  // LOCK - Not supported in AXI4
  // CACHE - Default value (0b0011) allows modifiable transactions. No benefit to
  // changing this.
  // PROT - Has no effect in current acceleration platforms.
  // QOS - Has no effect in current acceleration platforms.
  // REGION - Has no effect in current acceleration platforms.
  // USER - Has no effect in current acceleration platforms.
  // RESP - Not useful in most acceleration platforms.
  // 
  // AXI4 master interface gmem1
  output wire                                    gmem1_awvalid        ,
  input  wire                                    gmem1_awready        ,
  output wire [C_GMEM1_ADDR_WIDTH-1:0]           gmem1_awaddr         ,
  output wire [8-1:0]                            gmem1_awlen          ,
  output wire                                    gmem1_wvalid         ,
  input  wire                                    gmem1_wready         ,
  output wire [C_GMEM1_DATA_WIDTH-1:0]           gmem1_wdata          ,
  output wire [C_GMEM1_DATA_WIDTH/8-1:0]         gmem1_wstrb          ,
  output wire                                    gmem1_wlast          ,
  input  wire                                    gmem1_bvalid         ,
  output wire                                    gmem1_bready         ,
  output wire                                    gmem1_arvalid        ,
  input  wire                                    gmem1_arready        ,
  output wire [C_GMEM1_ADDR_WIDTH-1:0]           gmem1_araddr         ,
  output wire [8-1:0]                            gmem1_arlen          ,
  input  wire                                    gmem1_rvalid         ,
  output wire                                    gmem1_rready         ,
  input  wire [C_GMEM1_DATA_WIDTH-1:0]           gmem1_rdata          ,
  input  wire                                    gmem1_rlast          ,
  // AXI4 master interface gmem2
  output wire                                    gmem2_awvalid        ,
  input  wire                                    gmem2_awready        ,
  output wire [C_GMEM2_ADDR_WIDTH-1:0]           gmem2_awaddr         ,
  output wire [8-1:0]                            gmem2_awlen          ,
  output wire                                    gmem2_wvalid         ,
  input  wire                                    gmem2_wready         ,
  output wire [C_GMEM2_DATA_WIDTH-1:0]           gmem2_wdata          ,
  output wire [C_GMEM2_DATA_WIDTH/8-1:0]         gmem2_wstrb          ,
  output wire                                    gmem2_wlast          ,
  input  wire                                    gmem2_bvalid         ,
  output wire                                    gmem2_bready         ,
  output wire                                    gmem2_arvalid        ,
  input  wire                                    gmem2_arready        ,
  output wire [C_GMEM2_ADDR_WIDTH-1:0]           gmem2_araddr         ,
  output wire [8-1:0]                            gmem2_arlen          ,
  input  wire                                    gmem2_rvalid         ,
  output wire                                    gmem2_rready         ,
  input  wire [C_GMEM2_DATA_WIDTH-1:0]           gmem2_rdata          ,
  input  wire                                    gmem2_rlast          ,
  // AXI4 master interface gmem3
  output wire                                    gmem3_awvalid        ,
  input  wire                                    gmem3_awready        ,
  output wire [C_GMEM3_ADDR_WIDTH-1:0]           gmem3_awaddr         ,
  output wire [8-1:0]                            gmem3_awlen          ,
  output wire                                    gmem3_wvalid         ,
  input  wire                                    gmem3_wready         ,
  output wire [C_GMEM3_DATA_WIDTH-1:0]           gmem3_wdata          ,
  output wire [C_GMEM3_DATA_WIDTH/8-1:0]         gmem3_wstrb          ,
  output wire                                    gmem3_wlast          ,
  input  wire                                    gmem3_bvalid         ,
  output wire                                    gmem3_bready         ,
  output wire                                    gmem3_arvalid        ,
  input  wire                                    gmem3_arready        ,
  output wire [C_GMEM3_ADDR_WIDTH-1:0]           gmem3_araddr         ,
  output wire [8-1:0]                            gmem3_arlen          ,
  input  wire                                    gmem3_rvalid         ,
  output wire                                    gmem3_rready         ,
  input  wire [C_GMEM3_DATA_WIDTH-1:0]           gmem3_rdata          ,
  input  wire                                    gmem3_rlast          ,
  // AXI4-Lite slave interface
  input  wire                                    s_axi_control_awvalid,
  output wire                                    s_axi_control_awready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_awaddr ,
  input  wire                                    s_axi_control_wvalid ,
  output wire                                    s_axi_control_wready ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_wdata  ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH/8-1:0] s_axi_control_wstrb  ,
  input  wire                                    s_axi_control_arvalid,
  output wire                                    s_axi_control_arready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_araddr ,
  output wire                                    s_axi_control_rvalid ,
  input  wire                                    s_axi_control_rready ,
  output wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_rdata  ,
  output wire [2-1:0]                            s_axi_control_rresp  ,
  output wire                                    s_axi_control_bvalid ,
  input  wire                                    s_axi_control_bready ,
  output wire [2-1:0]                            s_axi_control_bresp  ,
  output wire                                    interrupt            
);

///////////////////////////////////////////////////////////////////////////////
// Local Parameters
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////
(* DONT_TOUCH = "yes" *)
reg                                 areset                         = 1'b0;
wire                                ap_start                      ;
wire                                ap_idle                       ;
wire                                ap_done                       ;
wire                                ap_ready                      ;
wire [32-1:0]                       coefficient_size              ;
wire [32-1:0]                       img_width                     ;
wire [32-1:0]                       img_height                    ;
wire [64-1:0]                       inFrame                       ;
wire [64-1:0]                       outFrame                      ;
wire [64-1:0]                       coefficient                   ;

// Register and invert reset signal.
always @(posedge ap_clk) begin
  areset <= ~ap_rst_n;
end

///////////////////////////////////////////////////////////////////////////////
// Begin control interface RTL.  Modifying not recommended.
///////////////////////////////////////////////////////////////////////////////


// AXI4-Lite slave interface
conv_rtl_control_s_axi #(
  .C_S_AXI_ADDR_WIDTH ( C_S_AXI_CONTROL_ADDR_WIDTH ),
  .C_S_AXI_DATA_WIDTH ( C_S_AXI_CONTROL_DATA_WIDTH )
)
inst_control_s_axi (
  .ACLK             ( ap_clk                ),
  .ARESET           ( areset                ),
  .ACLK_EN          ( 1'b1                  ),
  .AWVALID          ( s_axi_control_awvalid ),
  .AWREADY          ( s_axi_control_awready ),
  .AWADDR           ( s_axi_control_awaddr  ),
  .WVALID           ( s_axi_control_wvalid  ),
  .WREADY           ( s_axi_control_wready  ),
  .WDATA            ( s_axi_control_wdata   ),
  .WSTRB            ( s_axi_control_wstrb   ),
  .ARVALID          ( s_axi_control_arvalid ),
  .ARREADY          ( s_axi_control_arready ),
  .ARADDR           ( s_axi_control_araddr  ),
  .RVALID           ( s_axi_control_rvalid  ),
  .RREADY           ( s_axi_control_rready  ),
  .RDATA            ( s_axi_control_rdata   ),
  .RRESP            ( s_axi_control_rresp   ),
  .BVALID           ( s_axi_control_bvalid  ),
  .BREADY           ( s_axi_control_bready  ),
  .BRESP            ( s_axi_control_bresp   ),
  .interrupt        ( interrupt             ),
  .ap_start         ( ap_start              ),
  .ap_done          ( ap_done               ),
  .ap_ready         ( ap_ready              ),
  .ap_idle          ( ap_idle               ),
  .coefficient_size ( coefficient_size      ),
  .img_width        ( img_width             ),
  .img_height       ( img_height            ),
  .inFrame          ( inFrame               ),
  .outFrame         ( outFrame              ),
  .coefficient      ( coefficient           )
);

///////////////////////////////////////////////////////////////////////////////
// Add kernel logic here.  Modify/remove example code as necessary.
///////////////////////////////////////////////////////////////////////////////

// Example RTL block.  Remove to insert custom logic.
//conv_rtl_example #(
//  .C_GMEM1_ADDR_WIDTH ( C_GMEM1_ADDR_WIDTH ),
//  .C_GMEM1_DATA_WIDTH ( C_GMEM1_DATA_WIDTH ),
//  .C_GMEM2_ADDR_WIDTH ( C_GMEM2_ADDR_WIDTH ),
//  .C_GMEM2_DATA_WIDTH ( C_GMEM2_DATA_WIDTH ),
//  .C_GMEM3_ADDR_WIDTH ( C_GMEM3_ADDR_WIDTH ),
//  .C_GMEM3_DATA_WIDTH ( C_GMEM3_DATA_WIDTH )
//)
conv_rtl_user
inst_example (
  .ap_clk           ( ap_clk           ),
  .ap_rst_n         ( ap_rst_n         ),
  .ap_clk_2         ( ap_clk_2         ),
  .ap_rst_n_2       ( ap_rst_n_2       ),
  .gmem1_awvalid    ( gmem1_awvalid    ),
  .gmem1_awready    ( gmem1_awready    ),
  .gmem1_awaddr     ( gmem1_awaddr     ),
  .gmem1_awlen      ( gmem1_awlen      ),
  .gmem1_wvalid     ( gmem1_wvalid     ),
  .gmem1_wready     ( gmem1_wready     ),
  .gmem1_wdata      ( gmem1_wdata      ),
  .gmem1_wstrb      ( gmem1_wstrb      ),
  .gmem1_wlast      ( gmem1_wlast      ),
  .gmem1_bvalid     ( gmem1_bvalid     ),
  .gmem1_bready     ( gmem1_bready     ),
  .gmem1_arvalid    ( gmem1_arvalid    ),
  .gmem1_arready    ( gmem1_arready    ),
  .gmem1_araddr     ( gmem1_araddr     ),
  .gmem1_arlen      ( gmem1_arlen      ),
  .gmem1_rvalid     ( gmem1_rvalid     ),
  .gmem1_rready     ( gmem1_rready     ),
  .gmem1_rdata      ( gmem1_rdata      ),
  .gmem1_rlast      ( gmem1_rlast      ),
  .gmem2_awvalid    ( gmem2_awvalid    ),
  .gmem2_awready    ( gmem2_awready    ),
  .gmem2_awaddr     ( gmem2_awaddr     ),
  .gmem2_awlen      ( gmem2_awlen      ),
  .gmem2_wvalid     ( gmem2_wvalid     ),
  .gmem2_wready     ( gmem2_wready     ),
  .gmem2_wdata      ( gmem2_wdata      ),
  .gmem2_wstrb      ( gmem2_wstrb      ),
  .gmem2_wlast      ( gmem2_wlast      ),
  .gmem2_bvalid     ( gmem2_bvalid     ),
  .gmem2_bready     ( gmem2_bready     ),
  .gmem2_arvalid    ( gmem2_arvalid    ),
  .gmem2_arready    ( gmem2_arready    ),
  .gmem2_araddr     ( gmem2_araddr     ),
  .gmem2_arlen      ( gmem2_arlen      ),
  .gmem2_rvalid     ( gmem2_rvalid     ),
  .gmem2_rready     ( gmem2_rready     ),
  .gmem2_rdata      ( gmem2_rdata      ),
  .gmem2_rlast      ( gmem2_rlast      ),
  .gmem3_awvalid    ( gmem3_awvalid    ),
  .gmem3_awready    ( gmem3_awready    ),
  .gmem3_awaddr     ( gmem3_awaddr     ),
  .gmem3_awlen      ( gmem3_awlen      ),
  .gmem3_wvalid     ( gmem3_wvalid     ),
  .gmem3_wready     ( gmem3_wready     ),
  .gmem3_wdata      ( gmem3_wdata      ),
  .gmem3_wstrb      ( gmem3_wstrb      ),
  .gmem3_wlast      ( gmem3_wlast      ),
  .gmem3_bvalid     ( gmem3_bvalid     ),
  .gmem3_bready     ( gmem3_bready     ),
  .gmem3_arvalid    ( gmem3_arvalid    ),
  .gmem3_arready    ( gmem3_arready    ),
  .gmem3_araddr     ( gmem3_araddr     ),
  .gmem3_arlen      ( gmem3_arlen      ),
  .gmem3_rvalid     ( gmem3_rvalid     ),
  .gmem3_rready     ( gmem3_rready     ),
  .gmem3_rdata      ( gmem3_rdata      ),
  .gmem3_rlast      ( gmem3_rlast      ),
  .ap_start         ( ap_start         ),
  .ap_done          ( ap_done          ),
  .ap_idle          ( ap_idle          ),
  .ap_ready         ( ap_ready         ),
  .coefficient_size ( coefficient_size ),
  .img_width        ( img_width        ),
  .img_height       ( img_height       ),
  .inFrame          ( inFrame          ),
  .outFrame         ( outFrame         ),
  .coefficient      ( coefficient      )
);

endmodule
`default_nettype wire
