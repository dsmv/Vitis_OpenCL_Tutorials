
`timescale 1 ns / 1 ns

module  conv_rtl_user
#(
  parameter integer C_GMEM1_ADDR_WIDTH         = 64,
  parameter integer C_GMEM1_DATA_WIDTH         = 64,
  parameter integer C_GMEM2_ADDR_WIDTH         = 64,
  parameter integer C_GMEM2_DATA_WIDTH         = 64,
  parameter integer C_GMEM3_ADDR_WIDTH         = 64,
  parameter integer C_GMEM3_DATA_WIDTH         = 64
)
(

  
  input  wire                                    ap_clk               ,
  input  wire                                    ap_rst_n             ,
  input  wire                                    ap_clk_2             ,
  input  wire                                    ap_rst_n_2           ,
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

  input  wire                                   ap_start        ,
  output reg                                       ap_idle         ,
  output reg                                       ap_done         ,
  output reg                                      ap_ready        ,

  input [63:0]                                   inFrame,
  input [63:0]                                   outFrame,
  input [63:0]                                   coefficient,
  input [31:0]                                   coefficient_size,
  input [31:0]                                   image_width,
  input [31:0]                                   image_height

);

  logic [63:0]m_axi_gmem1_AWADDR;
  logic [7:0]m_axi_gmem1_AWLEN;
  logic [2:0]m_axi_gmem1_AWSIZE;
  logic [1:0]m_axi_gmem1_AWBURST;
  logic [1:0]m_axi_gmem1_AWLOCK;
  logic [3:0]m_axi_gmem1_AWREGION;
  logic [3:0]m_axi_gmem1_AWCACHE;
  logic [2:0]m_axi_gmem1_AWPROT;
  logic [3:0]m_axi_gmem1_AWQOS;
  logic m_axi_gmem1_AWVALID;
  logic m_axi_gmem1_AWREADY;
  logic [31:0]m_axi_gmem1_WDATA;
  logic [3:0]m_axi_gmem1_WSTRB;
  logic m_axi_gmem1_WLAST;
  logic m_axi_gmem1_WVALID;
  logic m_axi_gmem1_WREADY;
  logic [1:0]m_axi_gmem1_BRESP;
  logic m_axi_gmem1_BVALID;
  logic m_axi_gmem1_BREADY;
  logic [63:0]m_axi_gmem1_ARADDR;
  logic [7:0]m_axi_gmem1_ARLEN;
  logic [2:0]m_axi_gmem1_ARSIZE;
  logic [1:0]m_axi_gmem1_ARBURST;
  logic [1:0]m_axi_gmem1_ARLOCK;
  logic [3:0]m_axi_gmem1_ARREGION;
  logic [3:0]m_axi_gmem1_ARCACHE;
  logic [2:0]m_axi_gmem1_ARPROT;
  logic [3:0]m_axi_gmem1_ARQOS;
  logic m_axi_gmem1_ARVALID;
  logic m_axi_gmem1_ARREADY;
  logic [31:0]m_axi_gmem1_RDATA;
  logic [1:0]m_axi_gmem1_RRESP;
  logic m_axi_gmem1_RLAST;
  logic m_axi_gmem1_RVALID;
  logic m_axi_gmem1_RREADY;
  logic [63:0]m_axi_gmem2_AWADDR;
  logic [7:0]m_axi_gmem2_AWLEN;
  logic [2:0]m_axi_gmem2_AWSIZE;
  logic [1:0]m_axi_gmem2_AWBURST;
  logic [1:0]m_axi_gmem2_AWLOCK;
  logic [3:0]m_axi_gmem2_AWREGION;
  logic [3:0]m_axi_gmem2_AWCACHE;
  logic [2:0]m_axi_gmem2_AWPROT;
  logic [3:0]m_axi_gmem2_AWQOS;
  logic m_axi_gmem2_AWVALID;
  logic m_axi_gmem2_AWREADY;
  logic [31:0]m_axi_gmem2_WDATA;
  logic [3:0]m_axi_gmem2_WSTRB;
  logic m_axi_gmem2_WLAST;
  logic m_axi_gmem2_WVALID;
  logic m_axi_gmem2_WREADY;
  logic [1:0]m_axi_gmem2_BRESP;
  logic m_axi_gmem2_BVALID;
  logic m_axi_gmem2_BREADY;
  logic [63:0]m_axi_gmem2_ARADDR;
  logic [7:0]m_axi_gmem2_ARLEN;
  logic [2:0]m_axi_gmem2_ARSIZE;
  logic [1:0]m_axi_gmem2_ARBURST;
  logic [1:0]m_axi_gmem2_ARLOCK;
  logic [3:0]m_axi_gmem2_ARREGION;
  logic [3:0]m_axi_gmem2_ARCACHE;
  logic [2:0]m_axi_gmem2_ARPROT;
  logic [3:0]m_axi_gmem2_ARQOS;
  logic m_axi_gmem2_ARVALID;
  logic m_axi_gmem2_ARREADY;
  logic [31:0]m_axi_gmem2_RDATA;
  logic [1:0]m_axi_gmem2_RRESP;
  logic m_axi_gmem2_RLAST;
  logic m_axi_gmem2_RVALID;
  logic m_axi_gmem2_RREADY;
  logic [63:0]m_axi_gmem3_AWADDR;
  logic [7:0]m_axi_gmem3_AWLEN;
  logic [2:0]m_axi_gmem3_AWSIZE;
  logic [1:0]m_axi_gmem3_AWBURST;
  logic [1:0]m_axi_gmem3_AWLOCK;
  logic [3:0]m_axi_gmem3_AWREGION;
  logic [3:0]m_axi_gmem3_AWCACHE;
  logic [2:0]m_axi_gmem3_AWPROT;
  logic [3:0]m_axi_gmem3_AWQOS;
  logic m_axi_gmem3_AWVALID;
  logic m_axi_gmem3_AWREADY;
  logic [31:0]m_axi_gmem3_WDATA;
  logic [3:0]m_axi_gmem3_WSTRB;
  logic m_axi_gmem3_WLAST;
  logic m_axi_gmem3_WVALID;
  logic m_axi_gmem3_WREADY;
  logic [1:0]m_axi_gmem3_BRESP;
  logic m_axi_gmem3_BVALID;
  logic m_axi_gmem3_BREADY;
  logic [63:0]m_axi_gmem3_ARADDR;
  logic [7:0]m_axi_gmem3_ARLEN;
  logic [2:0]m_axi_gmem3_ARSIZE;
  logic [1:0]m_axi_gmem3_ARBURST;
  logic [1:0]m_axi_gmem3_ARLOCK;
  logic [3:0]m_axi_gmem3_ARREGION;
  logic [3:0]m_axi_gmem3_ARCACHE;
  logic [2:0]m_axi_gmem3_ARPROT;
  logic [3:0]m_axi_gmem3_ARQOS;
  logic m_axi_gmem3_ARVALID;
  logic m_axi_gmem3_ARREADY;
  logic [31:0]m_axi_gmem3_RDATA;
  logic [1:0]m_axi_gmem3_RRESP;
  logic m_axi_gmem3_RLAST;
  logic m_axi_gmem3_RVALID;
  logic m_axi_gmem3_RREADY;


  logic c_ap_start;
  logic c_ap_done;
  logic c_ap_ready;
  logic c_ap_idle;

  logic h_ap_start;
  logic h_ap_complete;

  logic r_ap_start;
  logic r_ap_complete;

  logic [1:0]   stp;
  logic [1:0]   stw;

  logic         rstp;
  logic         arstp;

  logic [63:0]      c_inFrame;
  logic [63:0]      c_outFrame;
  logic [63:0]      c_coefficient;
  logic [31:0]      c_coefficient_size;
  logic [31:0]      c_img_width;
  logic [31:0]      c_img_height;

logic           reset_n_z;

logic           reset_a_n;
logic   [3:0]   reset_az_n;

static_line_1 reset0 
(
  .data_i       (   ap_rst_n  ),  // input wire [0 : 0] data_i
  .data_o       (   reset_n_z   ),  // output wire [0 : 0] data_o
  .clk          (   ap_clk  )        // input wire clk
);  

static_line_1 reset1 
(
  .data_i       (   reset_n_z  ),  // input wire [0 : 0] data_i
  .data_o       (   reset_a_n   ),  // output wire [0 : 0] data_o
  .clk          (   ap_clk_2  )        // input wire clk
);  

static_line_64 resync_inFrame 
(
  .data_i       (   inFrame     ),  
  .data_o       (   c_inFrame   ),
  .clk          (   ap_clk_2    )        
);  

static_line_64 resync_outFrame 
(
  .data_i       (   outFrame     ),  
  .data_o       (   c_outFrame   ),
  .clk          (   ap_clk_2    )        
);  

static_line_64 resync_c_coefficient 
(
  .data_i       (   coefficient     ),  
  .data_o       (   c_coefficient   ),
  .clk          (   ap_clk_2    )        
);  

static_line_32 resync_c_coefficient_size 
(
  .data_i       (   coefficient_size     ),  
  .data_o       (   c_coefficient_size   ),
  .clk          (   ap_clk_2    )        
);  

static_line_32 resync_c_img_width 
(
  .data_i       (   image_width     ),  
  .data_o       (   c_img_width   ),
  .clk          (   ap_clk_2    )        
); 

static_line_32 resync_c_img_hight 
(
  .data_i       (   image_height     ),  
  .data_o       (   c_img_height   ),
  .clk          (   ap_clk_2    )        
); 

always @ (posedge ap_clk_2 ) begin
        reset_az_n <= #1 {4{reset_a_n}};
//        reset_az_n[0] <= #1 reset_a_n;
//        reset_az_n[1] <= #1 reset_a_n;
//        reset_az_n[2] <= #1 reset_a_n;
//        reset_az_n[3] <= #1 reset_a_n;
        arstp <= #1 ~reset_a_n;
end


always @ (posedge ap_clk) begin

  rstp <= #1 ~reset_n_z;
  
  case( stp )
   0: begin
      ap_idle <= #1 1;
      ap_done <= #1 0;
      ap_ready <= #1 0;
      r_ap_start <= #1 0;

      if( ap_start )
        stp <= #1 1;
   end

    1: begin 
      ap_idle <= #1 0;
      r_ap_start <= #1 1;
      if( r_ap_complete )
        stp <= #1 2;
   end

    2:  begin
        r_ap_start <= #1 0;
        ap_done <= #1 1;
        ap_ready <= #1 1;
        stp <= #1 3;
    end

    3: begin
        ap_done <= #1 0;
        ap_ready <= #1 0;
        if( r_ap_complete==0 )
          stp <= #1 0;

    end
  endcase 

  if( rstp )
    stp <= #1 0;
end

resync_bit  resync_h_start     ( ap_clk_2, h_ap_start, r_ap_start );
resync_bit  resync_r_complete  ( ap_clk,   r_ap_complete, h_ap_complete );

always @ (posedge ap_clk_2 ) begin

  case( stw )
      0: begin
          h_ap_complete <= #1 0;
          c_ap_start <= #1 0;

          if( h_ap_start )
            stw <= #1 1;

      end

      1:  begin
            c_ap_start <= #1 1;
            stw <= #1 2;
      end
      
      2:  begin
            if( c_ap_done ) begin
              c_ap_start <= #1 0;
              stw <= #1 3;
            end
      end

      3: begin
          h_ap_complete <= #1 1;
          c_ap_start <= #1 0;
          if( h_ap_start==0 )
            stw <= #1 0;
      end

  endcase

  if( arstp )
    stw <= #1 0;


end

convolve_fpga_0 u_convolve_fpga_0 (
    .m_axi_gmem1_AWADDR      (m_axi_gmem1_AWADDR),
    .m_axi_gmem1_AWLEN       (m_axi_gmem1_AWLEN),
    .m_axi_gmem1_AWSIZE      (m_axi_gmem1_AWSIZE),
    .m_axi_gmem1_AWBURST     (m_axi_gmem1_AWBURST),
    .m_axi_gmem1_AWLOCK      (m_axi_gmem1_AWLOCK),
    .m_axi_gmem1_AWREGION    (m_axi_gmem1_AWREGION),
    .m_axi_gmem1_AWCACHE     (m_axi_gmem1_AWCACHE),
    .m_axi_gmem1_AWPROT      (m_axi_gmem1_AWPROT),
    .m_axi_gmem1_AWQOS       (m_axi_gmem1_AWQOS),
    .m_axi_gmem1_AWVALID     (m_axi_gmem1_AWVALID),
    .m_axi_gmem1_AWREADY     (m_axi_gmem1_AWREADY),
    .m_axi_gmem1_WDATA       (m_axi_gmem1_WDATA),
    .m_axi_gmem1_WSTRB       (m_axi_gmem1_WSTRB),
    .m_axi_gmem1_WLAST       (m_axi_gmem1_WLAST),
    .m_axi_gmem1_WVALID      (m_axi_gmem1_WVALID),
    .m_axi_gmem1_WREADY      (m_axi_gmem1_WREADY),
    .m_axi_gmem1_BRESP       (m_axi_gmem1_BRESP),
    .m_axi_gmem1_BVALID      (m_axi_gmem1_BVALID),
    .m_axi_gmem1_BREADY      (m_axi_gmem1_BREADY),
    .m_axi_gmem1_ARADDR      (m_axi_gmem1_ARADDR),
    .m_axi_gmem1_ARLEN       (m_axi_gmem1_ARLEN),
    .m_axi_gmem1_ARSIZE      (m_axi_gmem1_ARSIZE),
    .m_axi_gmem1_ARBURST     (m_axi_gmem1_ARBURST),
    .m_axi_gmem1_ARLOCK      (m_axi_gmem1_ARLOCK),
    .m_axi_gmem1_ARREGION    (m_axi_gmem1_ARREGION),
    .m_axi_gmem1_ARCACHE     (m_axi_gmem1_ARCACHE),
    .m_axi_gmem1_ARPROT      (m_axi_gmem1_ARPROT),
    .m_axi_gmem1_ARQOS       (m_axi_gmem1_ARQOS),
    .m_axi_gmem1_ARVALID     (m_axi_gmem1_ARVALID),
    .m_axi_gmem1_ARREADY     (m_axi_gmem1_ARREADY),
    .m_axi_gmem1_RDATA       (m_axi_gmem1_RDATA),
    .m_axi_gmem1_RRESP       (m_axi_gmem1_RRESP),
    .m_axi_gmem1_RLAST       (m_axi_gmem1_RLAST),
    .m_axi_gmem1_RVALID      (m_axi_gmem1_RVALID),
    .m_axi_gmem1_RREADY      (m_axi_gmem1_RREADY),
    .ap_clk                  (ap_clk_2),
    .ap_rst_n                (reset_az_n[3]),
    .ap_start                (c_ap_start),
    .ap_done                 (c_ap_done),
    .ap_ready                (c_ap_ready),
    .ap_idle                 (c_ap_idle),
    .m_axi_gmem2_AWADDR      (m_axi_gmem2_AWADDR),
    .m_axi_gmem2_AWLEN       (m_axi_gmem2_AWLEN),
    .m_axi_gmem2_AWSIZE      (m_axi_gmem2_AWSIZE),
    .m_axi_gmem2_AWBURST     (m_axi_gmem2_AWBURST),
    .m_axi_gmem2_AWLOCK      (m_axi_gmem2_AWLOCK),
    .m_axi_gmem2_AWREGION    (m_axi_gmem2_AWREGION),
    .m_axi_gmem2_AWCACHE     (m_axi_gmem2_AWCACHE),
    .m_axi_gmem2_AWPROT      (m_axi_gmem2_AWPROT),
    .m_axi_gmem2_AWQOS       (m_axi_gmem2_AWQOS),
    .m_axi_gmem2_AWVALID     (m_axi_gmem2_AWVALID),
    .m_axi_gmem2_AWREADY     (m_axi_gmem2_AWREADY),
    .m_axi_gmem2_WDATA       (m_axi_gmem2_WDATA),
    .m_axi_gmem2_WSTRB       (m_axi_gmem2_WSTRB),
    .m_axi_gmem2_WLAST       (m_axi_gmem2_WLAST),
    .m_axi_gmem2_WVALID      (m_axi_gmem2_WVALID),
    .m_axi_gmem2_WREADY      (m_axi_gmem2_WREADY),
    .m_axi_gmem2_BRESP       (m_axi_gmem2_BRESP),
    .m_axi_gmem2_BVALID      (m_axi_gmem2_BVALID),
    .m_axi_gmem2_BREADY      (m_axi_gmem2_BREADY),
    .m_axi_gmem2_ARADDR      (m_axi_gmem2_ARADDR),
    .m_axi_gmem2_ARLEN       (m_axi_gmem2_ARLEN),
    .m_axi_gmem2_ARSIZE      (m_axi_gmem2_ARSIZE),
    .m_axi_gmem2_ARBURST     (m_axi_gmem2_ARBURST),
    .m_axi_gmem2_ARLOCK      (m_axi_gmem2_ARLOCK),
    .m_axi_gmem2_ARREGION    (m_axi_gmem2_ARREGION),
    .m_axi_gmem2_ARCACHE     (m_axi_gmem2_ARCACHE),
    .m_axi_gmem2_ARPROT      (m_axi_gmem2_ARPROT),
    .m_axi_gmem2_ARQOS       (m_axi_gmem2_ARQOS),
    .m_axi_gmem2_ARVALID     (m_axi_gmem2_ARVALID),
    .m_axi_gmem2_ARREADY     (m_axi_gmem2_ARREADY),
    .m_axi_gmem2_RDATA       (m_axi_gmem2_RDATA),
    .m_axi_gmem2_RRESP       (m_axi_gmem2_RRESP),
    .m_axi_gmem2_RLAST       (m_axi_gmem2_RLAST),
    .m_axi_gmem2_RVALID      (m_axi_gmem2_RVALID),
    .m_axi_gmem2_RREADY      (m_axi_gmem2_RREADY),
    .m_axi_gmem3_AWADDR      (m_axi_gmem3_AWADDR),
    .m_axi_gmem3_AWLEN       (m_axi_gmem3_AWLEN),
    .m_axi_gmem3_AWSIZE      (m_axi_gmem3_AWSIZE),
    .m_axi_gmem3_AWBURST     (m_axi_gmem3_AWBURST),
    .m_axi_gmem3_AWLOCK      (m_axi_gmem3_AWLOCK),
    .m_axi_gmem3_AWREGION    (m_axi_gmem3_AWREGION),
    .m_axi_gmem3_AWCACHE     (m_axi_gmem3_AWCACHE),
    .m_axi_gmem3_AWPROT      (m_axi_gmem3_AWPROT),
    .m_axi_gmem3_AWQOS       (m_axi_gmem3_AWQOS),
    .m_axi_gmem3_AWVALID     (m_axi_gmem3_AWVALID),
    .m_axi_gmem3_AWREADY     (m_axi_gmem3_AWREADY),
    .m_axi_gmem3_WDATA       (m_axi_gmem3_WDATA),
    .m_axi_gmem3_WSTRB       (m_axi_gmem3_WSTRB),
    .m_axi_gmem3_WLAST       (m_axi_gmem3_WLAST),
    .m_axi_gmem3_WVALID      (m_axi_gmem3_WVALID),
    .m_axi_gmem3_WREADY      (m_axi_gmem3_WREADY),
    .m_axi_gmem3_BRESP       (m_axi_gmem3_BRESP),
    .m_axi_gmem3_BVALID      (m_axi_gmem3_BVALID),
    .m_axi_gmem3_BREADY      (m_axi_gmem3_BREADY),
    .m_axi_gmem3_ARADDR      (m_axi_gmem3_ARADDR),
    .m_axi_gmem3_ARLEN       (m_axi_gmem3_ARLEN),
    .m_axi_gmem3_ARSIZE      (m_axi_gmem3_ARSIZE),
    .m_axi_gmem3_ARBURST     (m_axi_gmem3_ARBURST),
    .m_axi_gmem3_ARLOCK      (m_axi_gmem3_ARLOCK),
    .m_axi_gmem3_ARREGION    (m_axi_gmem3_ARREGION),
    .m_axi_gmem3_ARCACHE     (m_axi_gmem3_ARCACHE),
    .m_axi_gmem3_ARPROT      (m_axi_gmem3_ARPROT),
    .m_axi_gmem3_ARQOS       (m_axi_gmem3_ARQOS),
    .m_axi_gmem3_ARVALID     (m_axi_gmem3_ARVALID),
    .m_axi_gmem3_ARREADY     (m_axi_gmem3_ARREADY),
    .m_axi_gmem3_RDATA       (m_axi_gmem3_RDATA),
    .m_axi_gmem3_RRESP       (m_axi_gmem3_RRESP),
    .m_axi_gmem3_RLAST       (m_axi_gmem3_RLAST),
    .m_axi_gmem3_RVALID      (m_axi_gmem3_RVALID),
    .m_axi_gmem3_RREADY      (m_axi_gmem3_RREADY),
    .inFrame                 (c_inFrame),
    .outFrame                (c_outFrame),
    .coefficient             (c_coefficient),
    .coefficient_size        (c_coefficient_size),
    .img_width               (c_img_width),
    .img_height              (c_img_height)
);

axi_interconnect_32_64 u_gmem1 (
    .INTERCONNECT_ACLK       (ap_clk_2),
    .INTERCONNECT_ARESETN    (reset_az_n[0]),
    //.S00_AXI_ARESET_OUT_N    (m_axi_gmem1_ARESET_OUT_N),
    .S00_AXI_ACLK            (ap_clk_2),
    //.S00_AXI_AWID            (m_axi_gmem1_AWID),
    .S00_AXI_AWADDR          (m_axi_gmem1_AWADDR),
    .S00_AXI_AWLEN           (m_axi_gmem1_AWLEN),
    .S00_AXI_AWSIZE          (m_axi_gmem1_AWSIZE),
    .S00_AXI_AWBURST         (m_axi_gmem1_AWBURST),
    .S00_AXI_AWLOCK          (m_axi_gmem1_AWLOCK),
    .S00_AXI_AWCACHE         (m_axi_gmem1_AWCACHE),
    .S00_AXI_AWPROT          (m_axi_gmem1_AWPROT),
    .S00_AXI_AWQOS           (m_axi_gmem1_AWQOS),
    .S00_AXI_AWVALID         (m_axi_gmem1_AWVALID),
    .S00_AXI_AWREADY         (m_axi_gmem1_AWREADY),
    .S00_AXI_WDATA           (m_axi_gmem1_WDATA),
    .S00_AXI_WSTRB           (m_axi_gmem1_WSTRB),
    .S00_AXI_WLAST           (m_axi_gmem1_WLAST),
    .S00_AXI_WVALID          (m_axi_gmem1_WVALID),
    .S00_AXI_WREADY          (m_axi_gmem1_WREADY),
    .S00_AXI_BID             (m_axi_gmem1_BID),
    .S00_AXI_BRESP           (m_axi_gmem1_BRESP),
    .S00_AXI_BVALID          (m_axi_gmem1_BVALID),
    .S00_AXI_BREADY          (m_axi_gmem1_BREADY),
    .S00_AXI_ARID            (m_axi_gmem1_ARID),
    .S00_AXI_ARADDR          (m_axi_gmem1_ARADDR),
    .S00_AXI_ARLEN           (m_axi_gmem1_ARLEN),
    .S00_AXI_ARSIZE          (m_axi_gmem1_ARSIZE),
    .S00_AXI_ARBURST         (m_axi_gmem1_ARBURST),
    .S00_AXI_ARLOCK          (m_axi_gmem1_ARLOCK),
    .S00_AXI_ARCACHE         (m_axi_gmem1_ARCACHE),
    .S00_AXI_ARPROT          (m_axi_gmem1_ARPROT),
    .S00_AXI_ARQOS           (m_axi_gmem1_ARQOS),
    .S00_AXI_ARVALID         (m_axi_gmem1_ARVALID),
    .S00_AXI_ARREADY         (m_axi_gmem1_ARREADY),
    .S00_AXI_RID             (m_axi_gmem1_RID),
    .S00_AXI_RDATA           (m_axi_gmem1_RDATA),
    .S00_AXI_RRESP           (m_axi_gmem1_RRESP),
    .S00_AXI_RLAST           (m_axi_gmem1_RLAST),
    .S00_AXI_RVALID          (m_axi_gmem1_RVALID),
    .S00_AXI_RREADY          (m_axi_gmem1_RREADY),
    //.M00_AXI_ARESET_OUT_N    (gmem1_ARESET_OUT_N),
    .M00_AXI_ACLK            (ap_clk),
    .M00_AXI_AWID            (gmem1_awid),
    .M00_AXI_AWADDR          (gmem1_awaddr),
    .M00_AXI_AWLEN           (gmem1_awlen),
    .M00_AXI_AWVALID         (gmem1_awvalid),
    .M00_AXI_AWREADY         (gmem1_awready),
    .M00_AXI_WDATA           (gmem1_wdata),
    .M00_AXI_WSTRB           (gmem1_wstrb),
    .M00_AXI_WLAST           (gmem1_wlast),
    .M00_AXI_WVALID          (gmem1_wvalid),
    .M00_AXI_WREADY          (gmem1_wready),
    .M00_AXI_BVALID          (gmem1_bvalid),
    .M00_AXI_BREADY          (gmem1_bready),
    .M00_AXI_ARID            (gmem1_arid),
    .M00_AXI_ARADDR          (gmem1_araddr),
    .M00_AXI_ARLEN           (gmem1_arlen),
    .M00_AXI_ARVALID         (gmem1_arvalid),
    .M00_AXI_ARREADY         (gmem1_arready),
    .M00_AXI_RDATA           (gmem1_rdata),
    .M00_AXI_RLAST           (gmem1_rlast),
    .M00_AXI_RVALID          (gmem1_rvalid),
    .M00_AXI_RREADY          (gmem1_rready)
);

axi_interconnect_32_64 u_gmem2 (
    .INTERCONNECT_ACLK       (ap_clk_2),
    .INTERCONNECT_ARESETN    (reset_az_n[1]),
    .S00_AXI_ARESET_OUT_N    (m_axi_gmem2_ARESET_OUT_N),
    .S00_AXI_ACLK            (ap_clk_2),
    //.S00_AXI_AWID            (m_axi_gmem2_AWID),
    .S00_AXI_AWADDR          (m_axi_gmem2_AWADDR),
    .S00_AXI_AWLEN           (m_axi_gmem2_AWLEN),
    .S00_AXI_AWSIZE          (m_axi_gmem2_AWSIZE),
    .S00_AXI_AWBURST         (m_axi_gmem2_AWBURST),
    .S00_AXI_AWLOCK          (m_axi_gmem2_AWLOCK),
    .S00_AXI_AWCACHE         (m_axi_gmem2_AWCACHE),
    .S00_AXI_AWPROT          (m_axi_gmem2_AWPROT),
    .S00_AXI_AWQOS           (m_axi_gmem2_AWQOS),
    .S00_AXI_AWVALID         (m_axi_gmem2_AWVALID),
    .S00_AXI_AWREADY         (m_axi_gmem2_AWREADY),
    .S00_AXI_WDATA           (m_axi_gmem2_WDATA),
    .S00_AXI_WSTRB           (m_axi_gmem2_WSTRB),
    .S00_AXI_WLAST           (m_axi_gmem2_WLAST),
    .S00_AXI_WVALID          (m_axi_gmem2_WVALID),
    .S00_AXI_WREADY          (m_axi_gmem2_WREADY),
    .S00_AXI_BID             (m_axi_gmem2_BID),
    .S00_AXI_BRESP           (m_axi_gmem2_BRESP),
    .S00_AXI_BVALID          (m_axi_gmem2_BVALID),
    .S00_AXI_BREADY          (m_axi_gmem2_BREADY),
    .S00_AXI_ARID            (m_axi_gmem2_ARID),
    .S00_AXI_ARADDR          (m_axi_gmem2_ARADDR),
    .S00_AXI_ARLEN           (m_axi_gmem2_ARLEN),
    .S00_AXI_ARSIZE          (m_axi_gmem2_ARSIZE),
    .S00_AXI_ARBURST         (m_axi_gmem2_ARBURST),
    .S00_AXI_ARLOCK          (m_axi_gmem2_ARLOCK),
    .S00_AXI_ARCACHE         (m_axi_gmem2_ARCACHE),
    .S00_AXI_ARPROT          (m_axi_gmem2_ARPROT),
    .S00_AXI_ARQOS           (m_axi_gmem2_ARQOS),
    .S00_AXI_ARVALID         (m_axi_gmem2_ARVALID),
    .S00_AXI_ARREADY         (m_axi_gmem2_ARREADY),
    .S00_AXI_RID             (m_axi_gmem2_RID),
    .S00_AXI_RDATA           (m_axi_gmem2_RDATA),
    .S00_AXI_RRESP           (m_axi_gmem2_RRESP),
    .S00_AXI_RLAST           (m_axi_gmem2_RLAST),
    .S00_AXI_RVALID          (m_axi_gmem2_RVALID),
    .S00_AXI_RREADY          (m_axi_gmem2_RREADY),
    //.M00_AXI_ARESET_OUT_N    (gmem2_ARESET_OUT_N),
    .M00_AXI_ACLK            (ap_clk),
    .M00_AXI_AWID            (gmem2_awid),
    .M00_AXI_AWADDR          (gmem2_awaddr),
    .M00_AXI_AWLEN           (gmem2_awlen),
    .M00_AXI_AWVALID         (gmem2_awvalid),
    .M00_AXI_AWREADY         (gmem2_awready),
    .M00_AXI_WDATA           (gmem2_wdata),
    .M00_AXI_WSTRB           (gmem2_wstrb),
    .M00_AXI_WLAST           (gmem2_wlast),
    .M00_AXI_WVALID          (gmem2_wvalid),
    .M00_AXI_WREADY          (gmem2_wready),
    .M00_AXI_BVALID          (gmem2_bvalid),
    .M00_AXI_BREADY          (gmem2_bready),
    .M00_AXI_ARID            (gmem2_arid),
    .M00_AXI_ARADDR          (gmem2_araddr),
    .M00_AXI_ARLEN           (gmem2_arlen),
    .M00_AXI_ARVALID         (gmem2_arvalid),
    .M00_AXI_ARREADY         (gmem2_arready),
    .M00_AXI_RDATA           (gmem2_rdata),
    .M00_AXI_RLAST           (gmem2_rlast),
    .M00_AXI_RVALID          (gmem2_rvalid),
    .M00_AXI_RREADY          (gmem2_rready)
);


axi_interconnect_32_64 u_gmem3 (
    .INTERCONNECT_ACLK       (ap_clk_2),
    .INTERCONNECT_ARESETN    (reset_az_n[2]),
    
    //.S00_AXI_ARESET_OUT_N    (m_axi_gmem3_ARESET_OUT_N),
    .S00_AXI_ACLK            (ap_clk_2),
    //.S00_AXI_AWID            (m_axi_gmem3_AWID),
    .S00_AXI_AWADDR          (m_axi_gmem3_AWADDR),
    .S00_AXI_AWLEN           (m_axi_gmem3_AWLEN),
    .S00_AXI_AWSIZE          (m_axi_gmem3_AWSIZE),
    .S00_AXI_AWBURST         (m_axi_gmem3_AWBURST),
    .S00_AXI_AWLOCK          (m_axi_gmem3_AWLOCK),
    .S00_AXI_AWCACHE         (m_axi_gmem3_AWCACHE),
    .S00_AXI_AWPROT          (m_axi_gmem3_AWPROT),
    .S00_AXI_AWQOS           (m_axi_gmem3_AWQOS),
    .S00_AXI_AWVALID         (m_axi_gmem3_AWVALID),
    .S00_AXI_AWREADY         (m_axi_gmem3_AWREADY),
    .S00_AXI_WDATA           (m_axi_gmem3_WDATA),
    .S00_AXI_WSTRB           (m_axi_gmem3_WSTRB),
    .S00_AXI_WLAST           (m_axi_gmem3_WLAST),
    .S00_AXI_WVALID          (m_axi_gmem3_WVALID),
    .S00_AXI_WREADY          (m_axi_gmem3_WREADY),
    .S00_AXI_BID             (m_axi_gmem3_BID),
    .S00_AXI_BRESP           (m_axi_gmem3_BRESP),
    .S00_AXI_BVALID          (m_axi_gmem3_BVALID),
    .S00_AXI_BREADY          (m_axi_gmem3_BREADY),
    .S00_AXI_ARID            (m_axi_gmem3_ARID),
    .S00_AXI_ARADDR          (m_axi_gmem3_ARADDR),
    .S00_AXI_ARLEN           (m_axi_gmem3_ARLEN),
    .S00_AXI_ARSIZE          (m_axi_gmem3_ARSIZE),
    .S00_AXI_ARBURST         (m_axi_gmem3_ARBURST),
    .S00_AXI_ARLOCK          (m_axi_gmem3_ARLOCK),
    .S00_AXI_ARCACHE         (m_axi_gmem3_ARCACHE),
    .S00_AXI_ARPROT          (m_axi_gmem3_ARPROT),
    .S00_AXI_ARQOS           (m_axi_gmem3_ARQOS),
    .S00_AXI_ARVALID         (m_axi_gmem3_ARVALID),
    .S00_AXI_ARREADY         (m_axi_gmem3_ARREADY),
    .S00_AXI_RID             (m_axi_gmem3_RID),
    .S00_AXI_RDATA           (m_axi_gmem3_RDATA),
    .S00_AXI_RRESP           (m_axi_gmem3_RRESP),
    .S00_AXI_RLAST           (m_axi_gmem3_RLAST),
    .S00_AXI_RVALID          (m_axi_gmem3_RVALID),
    .S00_AXI_RREADY          (m_axi_gmem3_RREADY),
    //.M00_AXI_ARESET_OUT_N    (gmem3_ARESET_OUT_N),
    .M00_AXI_ACLK            (ap_clk),
    .M00_AXI_AWID            (gmem3_awid),
    .M00_AXI_AWADDR          (gmem3_awaddr),
    .M00_AXI_AWLEN           (gmem3_awlen),
    .M00_AXI_AWVALID         (gmem3_awvalid),
    .M00_AXI_AWREADY         (gmem3_awready),
    .M00_AXI_WDATA           (gmem3_wdata),
    .M00_AXI_WSTRB           (gmem3_wstrb),
    .M00_AXI_WLAST           (gmem3_wlast),
    .M00_AXI_WVALID          (gmem3_wvalid),
    .M00_AXI_WREADY          (gmem3_wready),
    .M00_AXI_BVALID          (gmem3_bvalid),
    .M00_AXI_BREADY          (gmem3_bready),
    .M00_AXI_ARID            (gmem3_arid),
    .M00_AXI_ARADDR          (gmem3_araddr),
    .M00_AXI_ARLEN           (gmem3_arlen),
    .M00_AXI_ARVALID         (gmem3_arvalid),
    .M00_AXI_ARREADY         (gmem3_arready),
    .M00_AXI_RDATA           (gmem3_rdata),
    .M00_AXI_RLAST           (gmem3_rlast),
    .M00_AXI_RVALID          (gmem3_rvalid),
    .M00_AXI_RREADY          (gmem3_rready)
);

endmodule

