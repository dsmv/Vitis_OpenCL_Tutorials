-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: inline:hls:convolve_fpga:1.1
-- IP Revision: 2011082004

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT convolve_fpga_0
  PORT (
    m_axi_gmem1_AWADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_gmem1_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem1_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem1_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem1_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem1_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem1_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem1_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem1_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem1_AWVALID : OUT STD_LOGIC;
    m_axi_gmem1_AWREADY : IN STD_LOGIC;
    m_axi_gmem1_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem1_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem1_WLAST : OUT STD_LOGIC;
    m_axi_gmem1_WVALID : OUT STD_LOGIC;
    m_axi_gmem1_WREADY : IN STD_LOGIC;
    m_axi_gmem1_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem1_BVALID : IN STD_LOGIC;
    m_axi_gmem1_BREADY : OUT STD_LOGIC;
    m_axi_gmem1_ARADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_gmem1_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem1_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem1_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem1_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem1_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem1_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem1_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem1_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem1_ARVALID : OUT STD_LOGIC;
    m_axi_gmem1_ARREADY : IN STD_LOGIC;
    m_axi_gmem1_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem1_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem1_RLAST : IN STD_LOGIC;
    m_axi_gmem1_RVALID : IN STD_LOGIC;
    m_axi_gmem1_RREADY : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    m_axi_gmem2_AWADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_gmem2_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem2_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem2_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem2_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem2_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem2_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem2_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem2_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem2_AWVALID : OUT STD_LOGIC;
    m_axi_gmem2_AWREADY : IN STD_LOGIC;
    m_axi_gmem2_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem2_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem2_WLAST : OUT STD_LOGIC;
    m_axi_gmem2_WVALID : OUT STD_LOGIC;
    m_axi_gmem2_WREADY : IN STD_LOGIC;
    m_axi_gmem2_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem2_BVALID : IN STD_LOGIC;
    m_axi_gmem2_BREADY : OUT STD_LOGIC;
    m_axi_gmem2_ARADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_gmem2_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem2_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem2_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem2_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem2_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem2_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem2_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem2_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem2_ARVALID : OUT STD_LOGIC;
    m_axi_gmem2_ARREADY : IN STD_LOGIC;
    m_axi_gmem2_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem2_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem2_RLAST : IN STD_LOGIC;
    m_axi_gmem2_RVALID : IN STD_LOGIC;
    m_axi_gmem2_RREADY : OUT STD_LOGIC;
    m_axi_gmem3_AWADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_gmem3_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem3_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem3_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem3_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem3_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem3_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem3_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem3_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem3_AWVALID : OUT STD_LOGIC;
    m_axi_gmem3_AWREADY : IN STD_LOGIC;
    m_axi_gmem3_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem3_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem3_WLAST : OUT STD_LOGIC;
    m_axi_gmem3_WVALID : OUT STD_LOGIC;
    m_axi_gmem3_WREADY : IN STD_LOGIC;
    m_axi_gmem3_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem3_BVALID : IN STD_LOGIC;
    m_axi_gmem3_BREADY : OUT STD_LOGIC;
    m_axi_gmem3_ARADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_gmem3_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem3_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem3_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem3_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem3_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem3_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem3_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem3_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem3_ARVALID : OUT STD_LOGIC;
    m_axi_gmem3_ARREADY : IN STD_LOGIC;
    m_axi_gmem3_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem3_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem3_RLAST : IN STD_LOGIC;
    m_axi_gmem3_RVALID : IN STD_LOGIC;
    m_axi_gmem3_RREADY : OUT STD_LOGIC;
    inFrame : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    outFrame : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    coefficient : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    coefficient_size : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    img_width : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    img_height : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : convolve_fpga_0
  PORT MAP (
    m_axi_gmem1_AWADDR => m_axi_gmem1_AWADDR,
    m_axi_gmem1_AWLEN => m_axi_gmem1_AWLEN,
    m_axi_gmem1_AWSIZE => m_axi_gmem1_AWSIZE,
    m_axi_gmem1_AWBURST => m_axi_gmem1_AWBURST,
    m_axi_gmem1_AWLOCK => m_axi_gmem1_AWLOCK,
    m_axi_gmem1_AWREGION => m_axi_gmem1_AWREGION,
    m_axi_gmem1_AWCACHE => m_axi_gmem1_AWCACHE,
    m_axi_gmem1_AWPROT => m_axi_gmem1_AWPROT,
    m_axi_gmem1_AWQOS => m_axi_gmem1_AWQOS,
    m_axi_gmem1_AWVALID => m_axi_gmem1_AWVALID,
    m_axi_gmem1_AWREADY => m_axi_gmem1_AWREADY,
    m_axi_gmem1_WDATA => m_axi_gmem1_WDATA,
    m_axi_gmem1_WSTRB => m_axi_gmem1_WSTRB,
    m_axi_gmem1_WLAST => m_axi_gmem1_WLAST,
    m_axi_gmem1_WVALID => m_axi_gmem1_WVALID,
    m_axi_gmem1_WREADY => m_axi_gmem1_WREADY,
    m_axi_gmem1_BRESP => m_axi_gmem1_BRESP,
    m_axi_gmem1_BVALID => m_axi_gmem1_BVALID,
    m_axi_gmem1_BREADY => m_axi_gmem1_BREADY,
    m_axi_gmem1_ARADDR => m_axi_gmem1_ARADDR,
    m_axi_gmem1_ARLEN => m_axi_gmem1_ARLEN,
    m_axi_gmem1_ARSIZE => m_axi_gmem1_ARSIZE,
    m_axi_gmem1_ARBURST => m_axi_gmem1_ARBURST,
    m_axi_gmem1_ARLOCK => m_axi_gmem1_ARLOCK,
    m_axi_gmem1_ARREGION => m_axi_gmem1_ARREGION,
    m_axi_gmem1_ARCACHE => m_axi_gmem1_ARCACHE,
    m_axi_gmem1_ARPROT => m_axi_gmem1_ARPROT,
    m_axi_gmem1_ARQOS => m_axi_gmem1_ARQOS,
    m_axi_gmem1_ARVALID => m_axi_gmem1_ARVALID,
    m_axi_gmem1_ARREADY => m_axi_gmem1_ARREADY,
    m_axi_gmem1_RDATA => m_axi_gmem1_RDATA,
    m_axi_gmem1_RRESP => m_axi_gmem1_RRESP,
    m_axi_gmem1_RLAST => m_axi_gmem1_RLAST,
    m_axi_gmem1_RVALID => m_axi_gmem1_RVALID,
    m_axi_gmem1_RREADY => m_axi_gmem1_RREADY,
    ap_clk => ap_clk,
    ap_rst_n => ap_rst_n,
    ap_start => ap_start,
    ap_done => ap_done,
    ap_ready => ap_ready,
    ap_idle => ap_idle,
    m_axi_gmem2_AWADDR => m_axi_gmem2_AWADDR,
    m_axi_gmem2_AWLEN => m_axi_gmem2_AWLEN,
    m_axi_gmem2_AWSIZE => m_axi_gmem2_AWSIZE,
    m_axi_gmem2_AWBURST => m_axi_gmem2_AWBURST,
    m_axi_gmem2_AWLOCK => m_axi_gmem2_AWLOCK,
    m_axi_gmem2_AWREGION => m_axi_gmem2_AWREGION,
    m_axi_gmem2_AWCACHE => m_axi_gmem2_AWCACHE,
    m_axi_gmem2_AWPROT => m_axi_gmem2_AWPROT,
    m_axi_gmem2_AWQOS => m_axi_gmem2_AWQOS,
    m_axi_gmem2_AWVALID => m_axi_gmem2_AWVALID,
    m_axi_gmem2_AWREADY => m_axi_gmem2_AWREADY,
    m_axi_gmem2_WDATA => m_axi_gmem2_WDATA,
    m_axi_gmem2_WSTRB => m_axi_gmem2_WSTRB,
    m_axi_gmem2_WLAST => m_axi_gmem2_WLAST,
    m_axi_gmem2_WVALID => m_axi_gmem2_WVALID,
    m_axi_gmem2_WREADY => m_axi_gmem2_WREADY,
    m_axi_gmem2_BRESP => m_axi_gmem2_BRESP,
    m_axi_gmem2_BVALID => m_axi_gmem2_BVALID,
    m_axi_gmem2_BREADY => m_axi_gmem2_BREADY,
    m_axi_gmem2_ARADDR => m_axi_gmem2_ARADDR,
    m_axi_gmem2_ARLEN => m_axi_gmem2_ARLEN,
    m_axi_gmem2_ARSIZE => m_axi_gmem2_ARSIZE,
    m_axi_gmem2_ARBURST => m_axi_gmem2_ARBURST,
    m_axi_gmem2_ARLOCK => m_axi_gmem2_ARLOCK,
    m_axi_gmem2_ARREGION => m_axi_gmem2_ARREGION,
    m_axi_gmem2_ARCACHE => m_axi_gmem2_ARCACHE,
    m_axi_gmem2_ARPROT => m_axi_gmem2_ARPROT,
    m_axi_gmem2_ARQOS => m_axi_gmem2_ARQOS,
    m_axi_gmem2_ARVALID => m_axi_gmem2_ARVALID,
    m_axi_gmem2_ARREADY => m_axi_gmem2_ARREADY,
    m_axi_gmem2_RDATA => m_axi_gmem2_RDATA,
    m_axi_gmem2_RRESP => m_axi_gmem2_RRESP,
    m_axi_gmem2_RLAST => m_axi_gmem2_RLAST,
    m_axi_gmem2_RVALID => m_axi_gmem2_RVALID,
    m_axi_gmem2_RREADY => m_axi_gmem2_RREADY,
    m_axi_gmem3_AWADDR => m_axi_gmem3_AWADDR,
    m_axi_gmem3_AWLEN => m_axi_gmem3_AWLEN,
    m_axi_gmem3_AWSIZE => m_axi_gmem3_AWSIZE,
    m_axi_gmem3_AWBURST => m_axi_gmem3_AWBURST,
    m_axi_gmem3_AWLOCK => m_axi_gmem3_AWLOCK,
    m_axi_gmem3_AWREGION => m_axi_gmem3_AWREGION,
    m_axi_gmem3_AWCACHE => m_axi_gmem3_AWCACHE,
    m_axi_gmem3_AWPROT => m_axi_gmem3_AWPROT,
    m_axi_gmem3_AWQOS => m_axi_gmem3_AWQOS,
    m_axi_gmem3_AWVALID => m_axi_gmem3_AWVALID,
    m_axi_gmem3_AWREADY => m_axi_gmem3_AWREADY,
    m_axi_gmem3_WDATA => m_axi_gmem3_WDATA,
    m_axi_gmem3_WSTRB => m_axi_gmem3_WSTRB,
    m_axi_gmem3_WLAST => m_axi_gmem3_WLAST,
    m_axi_gmem3_WVALID => m_axi_gmem3_WVALID,
    m_axi_gmem3_WREADY => m_axi_gmem3_WREADY,
    m_axi_gmem3_BRESP => m_axi_gmem3_BRESP,
    m_axi_gmem3_BVALID => m_axi_gmem3_BVALID,
    m_axi_gmem3_BREADY => m_axi_gmem3_BREADY,
    m_axi_gmem3_ARADDR => m_axi_gmem3_ARADDR,
    m_axi_gmem3_ARLEN => m_axi_gmem3_ARLEN,
    m_axi_gmem3_ARSIZE => m_axi_gmem3_ARSIZE,
    m_axi_gmem3_ARBURST => m_axi_gmem3_ARBURST,
    m_axi_gmem3_ARLOCK => m_axi_gmem3_ARLOCK,
    m_axi_gmem3_ARREGION => m_axi_gmem3_ARREGION,
    m_axi_gmem3_ARCACHE => m_axi_gmem3_ARCACHE,
    m_axi_gmem3_ARPROT => m_axi_gmem3_ARPROT,
    m_axi_gmem3_ARQOS => m_axi_gmem3_ARQOS,
    m_axi_gmem3_ARVALID => m_axi_gmem3_ARVALID,
    m_axi_gmem3_ARREADY => m_axi_gmem3_ARREADY,
    m_axi_gmem3_RDATA => m_axi_gmem3_RDATA,
    m_axi_gmem3_RRESP => m_axi_gmem3_RRESP,
    m_axi_gmem3_RLAST => m_axi_gmem3_RLAST,
    m_axi_gmem3_RVALID => m_axi_gmem3_RVALID,
    m_axi_gmem3_RREADY => m_axi_gmem3_RREADY,
    inFrame => inFrame,
    outFrame => outFrame,
    coefficient => coefficient,
    coefficient_size => coefficient_size,
    img_width => img_width,
    img_height => img_height
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

