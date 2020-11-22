// This is a generated file. Use and modify at your own risk.
////////////////////////////////////////////////////////////////////////////////
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ps / 1 ps
import axi_vip_pkg::*;
import slv_gmem1_vip_pkg::*;
import slv_gmem2_vip_pkg::*;
import slv_gmem3_vip_pkg::*;
import control_conv_rtl_vip_pkg::*;

module conv_rtl_tb ();
parameter integer LP_MAX_LENGTH = 8192;
parameter integer LP_MAX_TRANSFER_LENGTH = 16384 / 4;
parameter integer C_S_AXI_CONTROL_ADDR_WIDTH = 12;
parameter integer C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter integer C_GMEM1_ADDR_WIDTH = 64;
parameter integer C_GMEM1_DATA_WIDTH = 64;
parameter integer C_GMEM2_ADDR_WIDTH = 64;
parameter integer C_GMEM2_DATA_WIDTH = 64;
parameter integer C_GMEM3_ADDR_WIDTH = 64;
parameter integer C_GMEM3_DATA_WIDTH = 64;

// Control Register
parameter KRNL_CTRL_REG_ADDR     = 32'h00000000;
parameter CTRL_START_MASK        = 32'h00000001;
parameter CTRL_DONE_MASK         = 32'h00000002;
parameter CTRL_IDLE_MASK         = 32'h00000004;
parameter CTRL_READY_MASK        = 32'h00000008;
parameter CTRL_CONTINUE_MASK     = 32'h00000010; // Only ap_ctrl_chain
parameter CTRL_AUTO_RESTART_MASK = 32'h00000080; // Not used

// Global Interrupt Enable Register
parameter KRNL_GIE_REG_ADDR      = 32'h00000004;
parameter GIE_GIE_MASK           = 32'h00000001;
// IP Interrupt Enable Register
parameter KRNL_IER_REG_ADDR      = 32'h00000008;
parameter IER_DONE_MASK          = 32'h00000001;
parameter IER_READY_MASK         = 32'h00000002;
// IP Interrupt Status Register
parameter KRNL_ISR_REG_ADDR      = 32'h0000000c;
parameter ISR_DONE_MASK          = 32'h00000001;
parameter ISR_READY_MASK         = 32'h00000002;

parameter integer LP_CLK_PERIOD_PS = 4000; // 250 MHz

//System Signals
logic ap_clk = 0;

initial begin: AP_CLK
  forever begin
    ap_clk = #(LP_CLK_PERIOD_PS/2) ~ap_clk;
  end
end

parameter integer LP_CLK2_PERIOD_PS = 5000; // 200 MHz

logic ap_clk_2 = 0;

initial begin: AP_CLK_2
  forever begin
    ap_clk_2 = #(LP_CLK2_PERIOD_PS/2) ~ap_clk_2;
  end
end
 
//System Signals
logic ap_rst_n = 0;
logic initial_reset  =0;

task automatic ap_rst_n_sequence(input integer unsigned width = 20);
  @(posedge ap_clk);
  #1ps;
  ap_rst_n = 0;
  repeat (width) @(posedge ap_clk);
  #1ps;
  ap_rst_n = 1;
endtask

initial begin: AP_RST
  ap_rst_n_sequence(50);
  initial_reset =1;
end
 logic ap_rst_n_2 = 0;

task automatic ap_rst_n_2_sequence(input integer unsigned width = 20);
  @(posedge ap_clk_2);
  #1ps;
  ap_rst_n_2 = 0;
  repeat (width) @(posedge ap_clk_2);
  #1ps;
  ap_rst_n_2 = 1;
endtask

initial begin: AP_RST_2
  ap_rst_n_2_sequence(50);
end
//AXI4 master interface gmem1
wire [1-1:0] gmem1_awvalid;
wire [1-1:0] gmem1_awready;
wire [C_GMEM1_ADDR_WIDTH-1:0] gmem1_awaddr;
wire [8-1:0] gmem1_awlen;
wire [1-1:0] gmem1_wvalid;
wire [1-1:0] gmem1_wready;
wire [C_GMEM1_DATA_WIDTH-1:0] gmem1_wdata;
wire [C_GMEM1_DATA_WIDTH/8-1:0] gmem1_wstrb;
wire [1-1:0] gmem1_wlast;
wire [1-1:0] gmem1_bvalid;
wire [1-1:0] gmem1_bready;
wire [1-1:0] gmem1_arvalid;
wire [1-1:0] gmem1_arready;
wire [C_GMEM1_ADDR_WIDTH-1:0] gmem1_araddr;
wire [8-1:0] gmem1_arlen;
wire [1-1:0] gmem1_rvalid;
wire [1-1:0] gmem1_rready;
wire [C_GMEM1_DATA_WIDTH-1:0] gmem1_rdata;
wire [1-1:0] gmem1_rlast;
//AXI4 master interface gmem2
wire [1-1:0] gmem2_awvalid;
wire [1-1:0] gmem2_awready;
wire [C_GMEM2_ADDR_WIDTH-1:0] gmem2_awaddr;
wire [8-1:0] gmem2_awlen;
wire [1-1:0] gmem2_wvalid;
wire [1-1:0] gmem2_wready;
wire [C_GMEM2_DATA_WIDTH-1:0] gmem2_wdata;
wire [C_GMEM2_DATA_WIDTH/8-1:0] gmem2_wstrb;
wire [1-1:0] gmem2_wlast;
wire [1-1:0] gmem2_bvalid;
wire [1-1:0] gmem2_bready;
wire [1-1:0] gmem2_arvalid;
wire [1-1:0] gmem2_arready;
wire [C_GMEM2_ADDR_WIDTH-1:0] gmem2_araddr;
wire [8-1:0] gmem2_arlen;
wire [1-1:0] gmem2_rvalid;
wire [1-1:0] gmem2_rready;
wire [C_GMEM2_DATA_WIDTH-1:0] gmem2_rdata;
wire [1-1:0] gmem2_rlast;
//AXI4 master interface gmem3
wire [1-1:0] gmem3_awvalid;
wire [1-1:0] gmem3_awready;
wire [C_GMEM3_ADDR_WIDTH-1:0] gmem3_awaddr;
wire [8-1:0] gmem3_awlen;
wire [1-1:0] gmem3_wvalid;
wire [1-1:0] gmem3_wready;
wire [C_GMEM3_DATA_WIDTH-1:0] gmem3_wdata;
wire [C_GMEM3_DATA_WIDTH/8-1:0] gmem3_wstrb;
wire [1-1:0] gmem3_wlast;
wire [1-1:0] gmem3_bvalid;
wire [1-1:0] gmem3_bready;
wire [1-1:0] gmem3_arvalid;
wire [1-1:0] gmem3_arready;
wire [C_GMEM3_ADDR_WIDTH-1:0] gmem3_araddr;
wire [8-1:0] gmem3_arlen;
wire [1-1:0] gmem3_rvalid;
wire [1-1:0] gmem3_rready;
wire [C_GMEM3_DATA_WIDTH-1:0] gmem3_rdata;
wire [1-1:0] gmem3_rlast;
//AXI4LITE control signals
wire [1-1:0] s_axi_control_awvalid;
wire [1-1:0] s_axi_control_awready;
wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0] s_axi_control_awaddr;
wire [1-1:0] s_axi_control_wvalid;
wire [1-1:0] s_axi_control_wready;
wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0] s_axi_control_wdata;
wire [C_S_AXI_CONTROL_DATA_WIDTH/8-1:0] s_axi_control_wstrb;
wire [1-1:0] s_axi_control_arvalid;
wire [1-1:0] s_axi_control_arready;
wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0] s_axi_control_araddr;
wire [1-1:0] s_axi_control_rvalid;
wire [1-1:0] s_axi_control_rready;
wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0] s_axi_control_rdata;
wire [2-1:0] s_axi_control_rresp;
wire [1-1:0] s_axi_control_bvalid;
wire [1-1:0] s_axi_control_bready;
wire [2-1:0] s_axi_control_bresp;
wire interrupt;

// DUT instantiation
conv_rtl #(
  .C_S_AXI_CONTROL_ADDR_WIDTH ( C_S_AXI_CONTROL_ADDR_WIDTH ),
  .C_S_AXI_CONTROL_DATA_WIDTH ( C_S_AXI_CONTROL_DATA_WIDTH ),
  .C_GMEM1_ADDR_WIDTH         ( C_GMEM1_ADDR_WIDTH         ),
  .C_GMEM1_DATA_WIDTH         ( C_GMEM1_DATA_WIDTH         ),
  .C_GMEM2_ADDR_WIDTH         ( C_GMEM2_ADDR_WIDTH         ),
  .C_GMEM2_DATA_WIDTH         ( C_GMEM2_DATA_WIDTH         ),
  .C_GMEM3_ADDR_WIDTH         ( C_GMEM3_ADDR_WIDTH         ),
  .C_GMEM3_DATA_WIDTH         ( C_GMEM3_DATA_WIDTH         )
)
inst_dut (
  .ap_clk                ( ap_clk                ),
  .ap_clk_2              ( ap_clk_2              ),
  .ap_rst_n              ( ap_rst_n              ),
  .ap_rst_n_2            ( ap_rst_n_2            ),
  .gmem1_awvalid         ( gmem1_awvalid         ),
  .gmem1_awready         ( gmem1_awready         ),
  .gmem1_awaddr          ( gmem1_awaddr          ),
  .gmem1_awlen           ( gmem1_awlen           ),
  .gmem1_wvalid          ( gmem1_wvalid          ),
  .gmem1_wready          ( gmem1_wready          ),
  .gmem1_wdata           ( gmem1_wdata           ),
  .gmem1_wstrb           ( gmem1_wstrb           ),
  .gmem1_wlast           ( gmem1_wlast           ),
  .gmem1_bvalid          ( gmem1_bvalid          ),
  .gmem1_bready          ( gmem1_bready          ),
  .gmem1_arvalid         ( gmem1_arvalid         ),
  .gmem1_arready         ( gmem1_arready         ),
  .gmem1_araddr          ( gmem1_araddr          ),
  .gmem1_arlen           ( gmem1_arlen           ),
  .gmem1_rvalid          ( gmem1_rvalid          ),
  .gmem1_rready          ( gmem1_rready          ),
  .gmem1_rdata           ( gmem1_rdata           ),
  .gmem1_rlast           ( gmem1_rlast           ),
  .gmem2_awvalid         ( gmem2_awvalid         ),
  .gmem2_awready         ( gmem2_awready         ),
  .gmem2_awaddr          ( gmem2_awaddr          ),
  .gmem2_awlen           ( gmem2_awlen           ),
  .gmem2_wvalid          ( gmem2_wvalid          ),
  .gmem2_wready          ( gmem2_wready          ),
  .gmem2_wdata           ( gmem2_wdata           ),
  .gmem2_wstrb           ( gmem2_wstrb           ),
  .gmem2_wlast           ( gmem2_wlast           ),
  .gmem2_bvalid          ( gmem2_bvalid          ),
  .gmem2_bready          ( gmem2_bready          ),
  .gmem2_arvalid         ( gmem2_arvalid         ),
  .gmem2_arready         ( gmem2_arready         ),
  .gmem2_araddr          ( gmem2_araddr          ),
  .gmem2_arlen           ( gmem2_arlen           ),
  .gmem2_rvalid          ( gmem2_rvalid          ),
  .gmem2_rready          ( gmem2_rready          ),
  .gmem2_rdata           ( gmem2_rdata           ),
  .gmem2_rlast           ( gmem2_rlast           ),
  .gmem3_awvalid         ( gmem3_awvalid         ),
  .gmem3_awready         ( gmem3_awready         ),
  .gmem3_awaddr          ( gmem3_awaddr          ),
  .gmem3_awlen           ( gmem3_awlen           ),
  .gmem3_wvalid          ( gmem3_wvalid          ),
  .gmem3_wready          ( gmem3_wready          ),
  .gmem3_wdata           ( gmem3_wdata           ),
  .gmem3_wstrb           ( gmem3_wstrb           ),
  .gmem3_wlast           ( gmem3_wlast           ),
  .gmem3_bvalid          ( gmem3_bvalid          ),
  .gmem3_bready          ( gmem3_bready          ),
  .gmem3_arvalid         ( gmem3_arvalid         ),
  .gmem3_arready         ( gmem3_arready         ),
  .gmem3_araddr          ( gmem3_araddr          ),
  .gmem3_arlen           ( gmem3_arlen           ),
  .gmem3_rvalid          ( gmem3_rvalid          ),
  .gmem3_rready          ( gmem3_rready          ),
  .gmem3_rdata           ( gmem3_rdata           ),
  .gmem3_rlast           ( gmem3_rlast           ),
  .s_axi_control_awvalid ( s_axi_control_awvalid ),
  .s_axi_control_awready ( s_axi_control_awready ),
  .s_axi_control_awaddr  ( s_axi_control_awaddr  ),
  .s_axi_control_wvalid  ( s_axi_control_wvalid  ),
  .s_axi_control_wready  ( s_axi_control_wready  ),
  .s_axi_control_wdata   ( s_axi_control_wdata   ),
  .s_axi_control_wstrb   ( s_axi_control_wstrb   ),
  .s_axi_control_arvalid ( s_axi_control_arvalid ),
  .s_axi_control_arready ( s_axi_control_arready ),
  .s_axi_control_araddr  ( s_axi_control_araddr  ),
  .s_axi_control_rvalid  ( s_axi_control_rvalid  ),
  .s_axi_control_rready  ( s_axi_control_rready  ),
  .s_axi_control_rdata   ( s_axi_control_rdata   ),
  .s_axi_control_rresp   ( s_axi_control_rresp   ),
  .s_axi_control_bvalid  ( s_axi_control_bvalid  ),
  .s_axi_control_bready  ( s_axi_control_bready  ),
  .s_axi_control_bresp   ( s_axi_control_bresp   ),
  .interrupt             ( interrupt             )
);

// Master Control instantiation
control_conv_rtl_vip inst_control_conv_rtl_vip (
  .aclk          ( ap_clk                ),
  .aresetn       ( ap_rst_n              ),
  .m_axi_awvalid ( s_axi_control_awvalid ),
  .m_axi_awready ( s_axi_control_awready ),
  .m_axi_awaddr  ( s_axi_control_awaddr  ),
  .m_axi_wvalid  ( s_axi_control_wvalid  ),
  .m_axi_wready  ( s_axi_control_wready  ),
  .m_axi_wdata   ( s_axi_control_wdata   ),
  .m_axi_wstrb   ( s_axi_control_wstrb   ),
  .m_axi_arvalid ( s_axi_control_arvalid ),
  .m_axi_arready ( s_axi_control_arready ),
  .m_axi_araddr  ( s_axi_control_araddr  ),
  .m_axi_rvalid  ( s_axi_control_rvalid  ),
  .m_axi_rready  ( s_axi_control_rready  ),
  .m_axi_rdata   ( s_axi_control_rdata   ),
  .m_axi_rresp   ( s_axi_control_rresp   ),
  .m_axi_bvalid  ( s_axi_control_bvalid  ),
  .m_axi_bready  ( s_axi_control_bready  ),
  .m_axi_bresp   ( s_axi_control_bresp   )
);

control_conv_rtl_vip_mst_t  ctrl;

// Slave MM VIP instantiation
slv_gmem1_vip inst_slv_gmem1_vip (
  .aclk          ( ap_clk        ),
  .aresetn       ( ap_rst_n      ),
  .s_axi_awvalid ( gmem1_awvalid ),
  .s_axi_awready ( gmem1_awready ),
  .s_axi_awaddr  ( gmem1_awaddr  ),
  .s_axi_awlen   ( gmem1_awlen   ),
  .s_axi_wvalid  ( gmem1_wvalid  ),
  .s_axi_wready  ( gmem1_wready  ),
  .s_axi_wdata   ( gmem1_wdata   ),
  .s_axi_wstrb   ( gmem1_wstrb   ),
  .s_axi_wlast   ( gmem1_wlast   ),
  .s_axi_bvalid  ( gmem1_bvalid  ),
  .s_axi_bready  ( gmem1_bready  ),
  .s_axi_arvalid ( gmem1_arvalid ),
  .s_axi_arready ( gmem1_arready ),
  .s_axi_araddr  ( gmem1_araddr  ),
  .s_axi_arlen   ( gmem1_arlen   ),
  .s_axi_rvalid  ( gmem1_rvalid  ),
  .s_axi_rready  ( gmem1_rready  ),
  .s_axi_rdata   ( gmem1_rdata   ),
  .s_axi_rlast   ( gmem1_rlast   )
);


slv_gmem1_vip_slv_mem_t   gmem1;
slv_gmem1_vip_slv_t   gmem1_slv;

// Slave MM VIP instantiation
slv_gmem2_vip inst_slv_gmem2_vip (
  .aclk          ( ap_clk        ),
  .aresetn       ( ap_rst_n      ),
  .s_axi_awvalid ( gmem2_awvalid ),
  .s_axi_awready ( gmem2_awready ),
  .s_axi_awaddr  ( gmem2_awaddr  ),
  .s_axi_awlen   ( gmem2_awlen   ),
  .s_axi_wvalid  ( gmem2_wvalid  ),
  .s_axi_wready  ( gmem2_wready  ),
  .s_axi_wdata   ( gmem2_wdata   ),
  .s_axi_wstrb   ( gmem2_wstrb   ),
  .s_axi_wlast   ( gmem2_wlast   ),
  .s_axi_bvalid  ( gmem2_bvalid  ),
  .s_axi_bready  ( gmem2_bready  ),
  .s_axi_arvalid ( gmem2_arvalid ),
  .s_axi_arready ( gmem2_arready ),
  .s_axi_araddr  ( gmem2_araddr  ),
  .s_axi_arlen   ( gmem2_arlen   ),
  .s_axi_rvalid  ( gmem2_rvalid  ),
  .s_axi_rready  ( gmem2_rready  ),
  .s_axi_rdata   ( gmem2_rdata   ),
  .s_axi_rlast   ( gmem2_rlast   )
);


slv_gmem2_vip_slv_mem_t   gmem2;
slv_gmem2_vip_slv_t   gmem2_slv;

// Slave MM VIP instantiation
slv_gmem3_vip inst_slv_gmem3_vip (
  .aclk          ( ap_clk        ),
  .aresetn       ( ap_rst_n      ),
  .s_axi_awvalid ( gmem3_awvalid ),
  .s_axi_awready ( gmem3_awready ),
  .s_axi_awaddr  ( gmem3_awaddr  ),
  .s_axi_awlen   ( gmem3_awlen   ),
  .s_axi_wvalid  ( gmem3_wvalid  ),
  .s_axi_wready  ( gmem3_wready  ),
  .s_axi_wdata   ( gmem3_wdata   ),
  .s_axi_wstrb   ( gmem3_wstrb   ),
  .s_axi_wlast   ( gmem3_wlast   ),
  .s_axi_bvalid  ( gmem3_bvalid  ),
  .s_axi_bready  ( gmem3_bready  ),
  .s_axi_arvalid ( gmem3_arvalid ),
  .s_axi_arready ( gmem3_arready ),
  .s_axi_araddr  ( gmem3_araddr  ),
  .s_axi_arlen   ( gmem3_arlen   ),
  .s_axi_rvalid  ( gmem3_rvalid  ),
  .s_axi_rready  ( gmem3_rready  ),
  .s_axi_rdata   ( gmem3_rdata   ),
  .s_axi_rlast   ( gmem3_rlast   )
);


slv_gmem3_vip_slv_mem_t   gmem3;
slv_gmem3_vip_slv_t   gmem3_slv;

parameter NUM_AXIS_MST = 0;
parameter NUM_AXIS_SLV = 0;

bit               error_found = 0;

///////////////////////////////////////////////////////////////////////////
// Pointer for interface : gmem1
bit [63:0] inFrame_ptr = 64'h0;

///////////////////////////////////////////////////////////////////////////
// Pointer for interface : gmem2
bit [63:0] outFrame_ptr = 64'h0;

///////////////////////////////////////////////////////////////////////////
// Pointer for interface : gmem3
bit [63:0] coefficient_ptr = 64'h0;

/////////////////////////////////////////////////////////////////////////////////////////////////
// Backdoor fill the gmem1 memory.
function void gmem1_fill_memory(
  input bit [63:0] ptr,
  input integer    length
);
  for (longint unsigned slot = 0; slot < length; slot++) begin
    gmem1.mem_model.backdoor_memory_write_4byte(ptr + (slot * 4), slot);
  end
endfunction

/////////////////////////////////////////////////////////////////////////////////////////////////
// Backdoor fill the gmem2 memory.
function void gmem2_fill_memory(
  input bit [63:0] ptr,
  input integer    length
);
  for (longint unsigned slot = 0; slot < length; slot++) begin
    gmem2.mem_model.backdoor_memory_write_4byte(ptr + (slot * 4), slot);
  end
endfunction

/////////////////////////////////////////////////////////////////////////////////////////////////
// Backdoor fill the gmem3 memory.
function void gmem3_fill_memory(
  input bit [63:0] ptr,
  input integer    length
);
  for (longint unsigned slot = 0; slot < length; slot++) begin
    gmem3.mem_model.backdoor_memory_write_4byte(ptr + (slot * 4), slot);
  end
endfunction

task automatic system_reset_sequence(input integer unsigned width = 20);
  $display("%t : Starting System Reset Sequence", $time);
  fork
    ap_rst_n_sequence(25);
    ap_rst_n_2_sequence(25);
  join

endtask


/////////////////////////////////////////////////////////////////////////////////////////////////
// Generate a random 32bit number
function bit [31:0] get_random_4bytes();
  bit [31:0] rptr;
  ptr_random_failed: assert(std::randomize(rptr));
  return(rptr);
endfunction

/////////////////////////////////////////////////////////////////////////////////////////////////
// Generate a random 64bit 4k aligned address pointer.
function bit [63:0] get_random_ptr();
  bit [63:0] rptr;
  ptr_random_failed: assert(std::randomize(rptr));
  rptr[31:0] &= ~(32'h00000fff);
  return(rptr);
endfunction

/////////////////////////////////////////////////////////////////////////////////////////////////
// Control interface non-blocking write
// The task will return when the transaction has been accepted by the driver. It will be some
// amount of time before it will appear on the interface.
task automatic write_register (input bit [31:0] addr_in, input bit [31:0] data);
  axi_transaction   wr_xfer;
  wr_xfer = ctrl.wr_driver.create_transaction("wr_xfer");
  assert(wr_xfer.randomize() with {addr == addr_in;});
  wr_xfer.set_data_beat(0, data);
  ctrl.wr_driver.send(wr_xfer);
endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// Control interface blocking write
// The task will return when the BRESP has been returned from the kernel.
task automatic blocking_write_register (input bit [31:0] addr_in, input bit [31:0] data);
  axi_transaction   wr_xfer;
  axi_transaction   wr_rsp;
  wr_xfer = ctrl.wr_driver.create_transaction("wr_xfer");
  wr_xfer.set_driver_return_item_policy(XIL_AXI_PAYLOAD_RETURN);
  assert(wr_xfer.randomize() with {addr == addr_in;});
  wr_xfer.set_data_beat(0, data);
  ctrl.wr_driver.send(wr_xfer);
  ctrl.wr_driver.wait_rsp(wr_rsp);
endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// Control interface blocking read
// The task will return when the BRESP has been returned from the kernel.
task automatic read_register (input bit [31:0] addr, output bit [31:0] rddata);
  axi_transaction   rd_xfer;
  axi_transaction   rd_rsp;
  bit [31:0] rd_value;
  rd_xfer = ctrl.rd_driver.create_transaction("rd_xfer");
  rd_xfer.set_addr(addr);
  rd_xfer.set_driver_return_item_policy(XIL_AXI_PAYLOAD_RETURN);
  ctrl.rd_driver.send(rd_xfer);
  ctrl.rd_driver.wait_rsp(rd_rsp);
  rd_value = rd_rsp.get_data_beat(0);
  rddata = rd_value;
endtask



/////////////////////////////////////////////////////////////////////////////////////////////////
// Poll the Control interface status register.
// This will poll until the DONE flag in the status register is asserted.
task automatic poll_done_register ();
  bit [31:0] rd_value;
  do begin
    read_register(KRNL_CTRL_REG_ADDR, rd_value);
  end while ((rd_value & CTRL_DONE_MASK) == 0);
endtask

// This will poll until the IDLE flag in the status register is asserted.
task automatic poll_idle_register ();
  bit [31:0] rd_value;
  do begin
    read_register(KRNL_CTRL_REG_ADDR, rd_value);
  end while ((rd_value & CTRL_IDLE_MASK) == 0);
endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// Write to the control registers to enable the triggering of interrupts for the kernel
task automatic enable_interrupts();
  $display("Starting: Enabling Interrupts....");
  write_register(KRNL_GIE_REG_ADDR, GIE_GIE_MASK);
  write_register(KRNL_IER_REG_ADDR, IER_DONE_MASK);
  $display("Finished: Interrupts enabled.");
endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// Disabled the interrupts.
task automatic disable_interrupts();
  $display("Starting: Disable Interrupts....");
  write_register(KRNL_GIE_REG_ADDR, 32'h0);
  write_register(KRNL_IER_REG_ADDR, 32'h0);
  $display("Finished: Interrupts disabled.");
endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
//When the interrupt is asserted, read the correct registers and clear the asserted interrupt.
task automatic service_interrupts();
  bit [31:0] rd_value;
  $display("Starting Servicing interrupts....");
  read_register(KRNL_CTRL_REG_ADDR, rd_value);
  $display("Control Register: 0x%0x", rd_value);

  blocking_write_register(KRNL_CTRL_REG_ADDR, rd_value);

  if ((rd_value & CTRL_DONE_MASK) == 0) begin
    $error("%t : DONE bit not asserted. Register value: (0x%0x)", $time, rd_value);
  end
  read_register(KRNL_ISR_REG_ADDR, rd_value);
  $display("Interrupt Status Register: 0x%0x", rd_value);
  blocking_write_register(KRNL_ISR_REG_ADDR, rd_value);
  $display("Finished Servicing interrupts");
endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// Start the control VIP, SLAVE memory models and AXI4-Stream.
task automatic start_vips();
  $display("///////////////////////////////////////////////////////////////////////////");
  $display("Control Master: ctrl");
  ctrl = new("ctrl", conv_rtl_tb.inst_control_conv_rtl_vip.inst.IF);
  ctrl.start_master();

  $display("///////////////////////////////////////////////////////////////////////////");
  $display("Starting Memory slave: gmem1");
  gmem1 = new("gmem1", conv_rtl_tb.inst_slv_gmem1_vip.inst.IF);
  gmem1.start_slave();

  $display("///////////////////////////////////////////////////////////////////////////");
  $display("Starting Memory slave: gmem2");
  gmem2 = new("gmem2", conv_rtl_tb.inst_slv_gmem2_vip.inst.IF);
  gmem2.start_slave();

  $display("///////////////////////////////////////////////////////////////////////////");
  $display("Starting Memory slave: gmem3");
  gmem3 = new("gmem3", conv_rtl_tb.inst_slv_gmem3_vip.inst.IF);
  gmem3.start_slave();

endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// For each of the connected slave interfaces, set the Slave to not de-assert WREADY at any time.
// This will show the fastest outbound bandwidth from the WRITE channel.
task automatic slv_no_backpressure_wready();
  axi_ready_gen     rgen;
  $display("%t - Applying slv_no_backpressure_wready", $time);

  rgen = new("gmem1_no_backpressure_wready");
  rgen.set_ready_policy(XIL_AXI_READY_GEN_NO_BACKPRESSURE);
  gmem1.wr_driver.set_wready_gen(rgen);

  rgen = new("gmem2_no_backpressure_wready");
  rgen.set_ready_policy(XIL_AXI_READY_GEN_NO_BACKPRESSURE);
  gmem2.wr_driver.set_wready_gen(rgen);

  rgen = new("gmem3_no_backpressure_wready");
  rgen.set_ready_policy(XIL_AXI_READY_GEN_NO_BACKPRESSURE);
  gmem3.wr_driver.set_wready_gen(rgen);

endtask


/////////////////////////////////////////////////////////////////////////////////////////////////
// For each of the connected slave interfaces, apply a WREADY policy to introduce backpressure.
// Based on the simulation seed the order/shape of the WREADY per-channel will be different.
task automatic slv_random_backpressure_wready();
  axi_ready_gen     rgen;
  $display("%t - Applying slv_random_backpressure_wready", $time);

  rgen = new("gmem1_random_backpressure_wready");
  rgen.set_ready_policy(XIL_AXI_READY_GEN_RANDOM);
  rgen.set_low_time_range(0,12);
  rgen.set_high_time_range(1,12);
  rgen.set_event_count_range(3,5);
  gmem1.wr_driver.set_wready_gen(rgen);

  rgen = new("gmem2_random_backpressure_wready");
  rgen.set_ready_policy(XIL_AXI_READY_GEN_RANDOM);
  rgen.set_low_time_range(0,12);
  rgen.set_high_time_range(1,12);
  rgen.set_event_count_range(3,5);
  gmem2.wr_driver.set_wready_gen(rgen);

  rgen = new("gmem3_random_backpressure_wready");
  rgen.set_ready_policy(XIL_AXI_READY_GEN_RANDOM);
  rgen.set_low_time_range(0,12);
  rgen.set_high_time_range(1,12);
  rgen.set_event_count_range(3,5);
  gmem3.wr_driver.set_wready_gen(rgen);

endtask


/////////////////////////////////////////////////////////////////////////////////////////////////
// For each of the connected slave interfaces, force the memory model to not insert any inter-beat
// gaps on the READ channel.
task automatic slv_no_delay_rvalid();
  $display("%t - Applying slv_no_delay_rvalid", $time);

  gmem1.mem_model.set_inter_beat_gap_delay_policy(XIL_AXI_MEMORY_DELAY_FIXED);
  gmem1.mem_model.set_inter_beat_gap(0);

  gmem2.mem_model.set_inter_beat_gap_delay_policy(XIL_AXI_MEMORY_DELAY_FIXED);
  gmem2.mem_model.set_inter_beat_gap(0);

  gmem3.mem_model.set_inter_beat_gap_delay_policy(XIL_AXI_MEMORY_DELAY_FIXED);
  gmem3.mem_model.set_inter_beat_gap(0);

endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// For each of the connected slave interfaces, Allow the memory model to insert any inter-beat
// gaps on the READ channel.
task automatic slv_random_delay_rvalid();
  $display("%t - Applying slv_random_delay_rvalid", $time);

  gmem1.mem_model.set_inter_beat_gap_delay_policy(XIL_AXI_MEMORY_DELAY_RANDOM);
  gmem1.mem_model.set_inter_beat_gap_range(0,10);

  gmem2.mem_model.set_inter_beat_gap_delay_policy(XIL_AXI_MEMORY_DELAY_RANDOM);
  gmem2.mem_model.set_inter_beat_gap_range(0,10);

  gmem3.mem_model.set_inter_beat_gap_delay_policy(XIL_AXI_MEMORY_DELAY_RANDOM);
  gmem3.mem_model.set_inter_beat_gap_range(0,10);

endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// Check to ensure, following reset the value of the register is 0.
// Check that only the width of the register bits can be written.
task automatic check_register_value(input bit [31:0] addr_in, input integer unsigned register_width, output bit error_found);
  bit [31:0] rddata;
  bit [31:0] mask_data;
  error_found = 0;
  if (register_width < 32) begin
    mask_data = (1 << register_width) - 1;
  end else begin
    mask_data = 32'hffffffff;
  end
  read_register(addr_in, rddata);
  if (rddata != 32'h0) begin
    $error("Initial value mismatch: A:0x%0x : Expected 0x%x -> Got 0x%x", addr_in, 0, rddata);
    error_found = 1;
  end
  blocking_write_register(addr_in, 32'hffffffff);
  read_register(addr_in, rddata);
  if (rddata != mask_data) begin
    $error("Initial value mismatch: A:0x%0x : Expected 0x%x -> Got 0x%x", addr_in, mask_data, rddata);
    error_found = 1;
  end
endtask


/////////////////////////////////////////////////////////////////////////////////////////////////
// For each of the scalar registers, check:
// * reset value
// * correct number bits set on a write
task automatic check_scalar_registers(output bit error_found);
  bit tmp_error_found = 0;
  error_found = 0;
  $display("%t : Checking post reset values of scalar registers", $time);

  ///////////////////////////////////////////////////////////////////////////
  //Check ID 0: coefficient_size (0x010)
  check_register_value(32'h010, 32, tmp_error_found);
  error_found |= tmp_error_found;

  ///////////////////////////////////////////////////////////////////////////
  //Check ID 1: image_width (0x018)
  check_register_value(32'h018, 32, tmp_error_found);
  error_found |= tmp_error_found;

  ///////////////////////////////////////////////////////////////////////////
  //Check ID 2: image_height (0x020)
  check_register_value(32'h020, 32, tmp_error_found);
  error_found |= tmp_error_found;

endtask

task automatic set_scalar_registers();
  $display("%t : Setting Scalar Registers registers", $time);

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 0: coefficient_size (0x010) -> 32'hffffffff (scalar)
  write_register(32'h010, 32'h00000010);

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 1: image_width (0x018) -> 32'hffffffff (scalar)
  write_register(32'h018, 32'h00000010);

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 2: image_height (0x020) -> 32'hffffffff (scalar)
  write_register(32'h020, 32'h00000010);

endtask

task automatic check_pointer_registers(output bit error_found);
  bit tmp_error_found = 0;
  ///////////////////////////////////////////////////////////////////////////
  //Check the reset states of the pointer registers.
  $display("%t : Checking post reset values of pointer registers", $time);

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 3: inFrame (0x028)
  check_register_value(32'h028, 32, tmp_error_found);
  error_found |= tmp_error_found;

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 3: inFrame (0x02c)
  check_register_value(32'h02c, 32, tmp_error_found);
  error_found |= tmp_error_found;

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 4: outFrame (0x034)
  check_register_value(32'h034, 32, tmp_error_found);
  error_found |= tmp_error_found;

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 4: outFrame (0x038)
  check_register_value(32'h038, 32, tmp_error_found);
  error_found |= tmp_error_found;

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 5: coefficient (0x040)
  check_register_value(32'h040, 32, tmp_error_found);
  error_found |= tmp_error_found;

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 5: coefficient (0x044)
  check_register_value(32'h044, 32, tmp_error_found);
  error_found |= tmp_error_found;

endtask

task automatic set_memory_pointers();
  ///////////////////////////////////////////////////////////////////////////
  //Randomly generate memory pointers.
  inFrame_ptr = get_random_ptr();
  outFrame_ptr = get_random_ptr();
  coefficient_ptr = get_random_ptr();

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 3: inFrame (0x028) -> Randomized 4k aligned address (Global memory, lower 32 bits)
  write_register(32'h028, inFrame_ptr[31:0]);

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 3: inFrame (0x02c) -> Randomized 4k aligned address (Global memory, upper 32 bits)
  write_register(32'h02c, inFrame_ptr[63:32]);

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 4: outFrame (0x034) -> Randomized 4k aligned address (Global memory, lower 32 bits)
  write_register(32'h034, outFrame_ptr[31:0]);

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 4: outFrame (0x038) -> Randomized 4k aligned address (Global memory, upper 32 bits)
  write_register(32'h038, outFrame_ptr[63:32]);

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 5: coefficient (0x040) -> Randomized 4k aligned address (Global memory, lower 32 bits)
  write_register(32'h040, coefficient_ptr[31:0]);

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 5: coefficient (0x044) -> Randomized 4k aligned address (Global memory, upper 32 bits)
  write_register(32'h044, coefficient_ptr[63:32]);

endtask

task automatic backdoor_fill_memories();

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Backdoor fill the memory with the content.
  gmem1_fill_memory(inFrame_ptr, LP_MAX_LENGTH);

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Backdoor fill the memory with the content.
  gmem2_fill_memory(outFrame_ptr, LP_MAX_LENGTH);

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Backdoor fill the memory with the content.
  gmem3_fill_memory(coefficient_ptr, LP_MAX_LENGTH);

endtask

function automatic bit check_kernel_result();
  bit [31:0]        ret_rd_value = 32'h0;
  bit error_found = 0;
  integer error_counter;
  error_counter = 0;

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Checking memory connected to gmem1
  for (longint unsigned slot = 0; slot < LP_MAX_LENGTH; slot++) begin
    ret_rd_value = gmem1.mem_model.backdoor_memory_read_4byte(inFrame_ptr + (slot * 4));
    if (slot < LP_MAX_TRANSFER_LENGTH) begin
      if (ret_rd_value != (slot + 1)) begin
        $error("Memory Mismatch: gmem1 : @0x%x : Expected 0x%x -> Got 0x%x ", inFrame_ptr + (slot * 4), slot + 1, ret_rd_value);
        error_found |= 1;
        error_counter++;
      end
    end else begin
      if (ret_rd_value != slot) begin
        $error("Memory Mismatch: gmem1 : @0x%x : Expected 0x%x -> Got 0x%x ", inFrame_ptr + (slot * 4), slot, ret_rd_value);
        error_found |= 1;
        error_counter++;
      end
    end
    if (error_counter > 5) begin
      $display("Too many errors found. Exiting check of gmem1.");
      slot = LP_MAX_LENGTH;
    end
  end
  error_counter = 0;

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Checking memory connected to gmem2
  for (longint unsigned slot = 0; slot < LP_MAX_LENGTH; slot++) begin
    ret_rd_value = gmem2.mem_model.backdoor_memory_read_4byte(outFrame_ptr + (slot * 4));
    if (slot < LP_MAX_TRANSFER_LENGTH) begin
      if (ret_rd_value != (slot + 1)) begin
        $error("Memory Mismatch: gmem2 : @0x%x : Expected 0x%x -> Got 0x%x ", outFrame_ptr + (slot * 4), slot + 1, ret_rd_value);
        error_found |= 1;
        error_counter++;
      end
    end else begin
      if (ret_rd_value != slot) begin
        $error("Memory Mismatch: gmem2 : @0x%x : Expected 0x%x -> Got 0x%x ", outFrame_ptr + (slot * 4), slot, ret_rd_value);
        error_found |= 1;
        error_counter++;
      end
    end
    if (error_counter > 5) begin
      $display("Too many errors found. Exiting check of gmem2.");
      slot = LP_MAX_LENGTH;
    end
  end
  error_counter = 0;

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Checking memory connected to gmem3
  for (longint unsigned slot = 0; slot < LP_MAX_LENGTH; slot++) begin
    ret_rd_value = gmem3.mem_model.backdoor_memory_read_4byte(coefficient_ptr + (slot * 4));
    if (slot < LP_MAX_TRANSFER_LENGTH) begin
      if (ret_rd_value != (slot + 1)) begin
        $error("Memory Mismatch: gmem3 : @0x%x : Expected 0x%x -> Got 0x%x ", coefficient_ptr + (slot * 4), slot + 1, ret_rd_value);
        error_found |= 1;
        error_counter++;
      end
    end else begin
      if (ret_rd_value != slot) begin
        $error("Memory Mismatch: gmem3 : @0x%x : Expected 0x%x -> Got 0x%x ", coefficient_ptr + (slot * 4), slot, ret_rd_value);
        error_found |= 1;
        error_counter++;
      end
    end
    if (error_counter > 5) begin
      $display("Too many errors found. Exiting check of gmem3.");
      slot = LP_MAX_LENGTH;
    end
  end
  error_counter = 0;

  return(error_found);
endfunction

bit choose_pressure_type = 0;
bit axis_choose_pressure_type = 0;
bit [0-1:0] axis_tlast_received;

/////////////////////////////////////////////////////////////////////////////////////////////////
// Set up the kernel for operation and set the kernel START bit.
// The task will poll the DONE bit and check the results when complete.
task automatic multiple_iteration(input integer unsigned num_iterations, output bit error_found);
  error_found = 0;

  $display("Starting: multiple_iteration");
  for (integer unsigned iter = 0; iter < num_iterations; iter++) begin

    
    $display("Starting iteration: %d / %d", iter+1, num_iterations);
    RAND_WREADY_PRESSURE_FAILED: assert(std::randomize(choose_pressure_type));
    case(choose_pressure_type)
      0: slv_no_backpressure_wready();
      1: slv_random_backpressure_wready();
    endcase
    RAND_RVALID_PRESSURE_FAILED: assert(std::randomize(choose_pressure_type));
    case(choose_pressure_type)
      0: slv_no_delay_rvalid();
      1: slv_random_delay_rvalid();
    endcase

    set_scalar_registers();
    set_memory_pointers();
    backdoor_fill_memories();
    // Check that Kernel is IDLE before starting.
    poll_idle_register();
    ///////////////////////////////////////////////////////////////////////////
    //Start transfers
    blocking_write_register(KRNL_CTRL_REG_ADDR, CTRL_START_MASK);

    ctrl.wait_drivers_idle();
    ///////////////////////////////////////////////////////////////////////////
    //Wait for interrupt being asserted or poll done register
    @(posedge interrupt);

    ///////////////////////////////////////////////////////////////////////////
    // Service the interrupt
    service_interrupts();
    wait(interrupt == 0);

    ///////////////////////////////////////////////////////////////////////////
    error_found |= check_kernel_result()   ;

    $display("Finished iteration: %d / %d", iter+1, num_iterations);
  end
 endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
//Instantiate AXI4 LITE VIP
initial begin : STIMULUS
  #200000;
  start_vips();
  check_scalar_registers(error_found);
  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end

  check_pointer_registers(error_found);
  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end

  enable_interrupts();

  multiple_iteration(1, error_found);
  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end

  multiple_iteration(5, error_found);

  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end
  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Reset Recovery testing
  system_reset_sequence();
  check_scalar_registers(error_found);
  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end
  check_pointer_registers(error_found);
  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end

  enable_interrupts();

  multiple_iteration(1, error_found);

  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end else begin
    $display( "Test completed successfully");
  end
  $finish;
end

endmodule
`default_nettype wire

