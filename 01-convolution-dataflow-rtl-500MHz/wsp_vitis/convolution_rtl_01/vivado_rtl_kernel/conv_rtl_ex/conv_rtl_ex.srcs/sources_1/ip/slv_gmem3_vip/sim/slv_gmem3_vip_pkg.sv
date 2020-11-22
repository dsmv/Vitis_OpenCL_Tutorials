///////////////////////////////////////////////////////////////////////////
//NOTE: This file has been automatically generated by Vivado.
///////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
package slv_gmem3_vip_pkg;
import axi_vip_pkg::*;
///////////////////////////////////////////////////////////////////////////
// These parameters are named after the component for use in your verification 
// environment.
///////////////////////////////////////////////////////////////////////////
      parameter slv_gmem3_vip_VIP_PROTOCOL           = 0;
      parameter slv_gmem3_vip_VIP_READ_WRITE_MODE    = "READ_WRITE";
      parameter slv_gmem3_vip_VIP_INTERFACE_MODE     = 2;
      parameter slv_gmem3_vip_VIP_ADDR_WIDTH         = 64;
      parameter slv_gmem3_vip_VIP_DATA_WIDTH         = 64;
      parameter slv_gmem3_vip_VIP_ID_WIDTH           = 0;
      parameter slv_gmem3_vip_VIP_AWUSER_WIDTH       = 0;
      parameter slv_gmem3_vip_VIP_ARUSER_WIDTH       = 0;
      parameter slv_gmem3_vip_VIP_RUSER_WIDTH        = 0;
      parameter slv_gmem3_vip_VIP_WUSER_WIDTH        = 0;
      parameter slv_gmem3_vip_VIP_BUSER_WIDTH        = 0;
      parameter slv_gmem3_vip_VIP_SUPPORTS_NARROW    = 0;
      parameter slv_gmem3_vip_VIP_HAS_BURST          = 0;
      parameter slv_gmem3_vip_VIP_HAS_LOCK           = 0;
      parameter slv_gmem3_vip_VIP_HAS_CACHE          = 0;
      parameter slv_gmem3_vip_VIP_HAS_REGION         = 0;
      parameter slv_gmem3_vip_VIP_HAS_QOS            = 0;
      parameter slv_gmem3_vip_VIP_HAS_PROT           = 0;
      parameter slv_gmem3_vip_VIP_HAS_WSTRB          = 1;
      parameter slv_gmem3_vip_VIP_HAS_BRESP          = 0;
      parameter slv_gmem3_vip_VIP_HAS_RRESP          = 0;
      parameter slv_gmem3_vip_VIP_HAS_ACLKEN         = 0;
      parameter slv_gmem3_vip_VIP_HAS_ARESETN        = 1;
///////////////////////////////////////////////////////////////////////////


typedef axi_slv_agent #(slv_gmem3_vip_VIP_PROTOCOL, 
                        slv_gmem3_vip_VIP_ADDR_WIDTH,
                        slv_gmem3_vip_VIP_DATA_WIDTH,
                        slv_gmem3_vip_VIP_DATA_WIDTH,
                        slv_gmem3_vip_VIP_ID_WIDTH,
                        slv_gmem3_vip_VIP_ID_WIDTH,
                        slv_gmem3_vip_VIP_AWUSER_WIDTH, 
                        slv_gmem3_vip_VIP_WUSER_WIDTH, 
                        slv_gmem3_vip_VIP_BUSER_WIDTH, 
                        slv_gmem3_vip_VIP_ARUSER_WIDTH,
                        slv_gmem3_vip_VIP_RUSER_WIDTH, 
                        slv_gmem3_vip_VIP_SUPPORTS_NARROW, 
                        slv_gmem3_vip_VIP_HAS_BURST,
                        slv_gmem3_vip_VIP_HAS_LOCK,
                        slv_gmem3_vip_VIP_HAS_CACHE,
                        slv_gmem3_vip_VIP_HAS_REGION,
                        slv_gmem3_vip_VIP_HAS_PROT,
                        slv_gmem3_vip_VIP_HAS_QOS,
                        slv_gmem3_vip_VIP_HAS_WSTRB,
                        slv_gmem3_vip_VIP_HAS_BRESP,
                        slv_gmem3_vip_VIP_HAS_RRESP,
                        slv_gmem3_vip_VIP_HAS_ARESETN) slv_gmem3_vip_slv_t;

typedef axi_slv_mem_agent #(slv_gmem3_vip_VIP_PROTOCOL, 
                        slv_gmem3_vip_VIP_ADDR_WIDTH,
                        slv_gmem3_vip_VIP_DATA_WIDTH,
                        slv_gmem3_vip_VIP_DATA_WIDTH,
                        slv_gmem3_vip_VIP_ID_WIDTH,
                        slv_gmem3_vip_VIP_ID_WIDTH,
                        slv_gmem3_vip_VIP_AWUSER_WIDTH, 
                        slv_gmem3_vip_VIP_WUSER_WIDTH, 
                        slv_gmem3_vip_VIP_BUSER_WIDTH, 
                        slv_gmem3_vip_VIP_ARUSER_WIDTH,
                        slv_gmem3_vip_VIP_RUSER_WIDTH, 
                        slv_gmem3_vip_VIP_SUPPORTS_NARROW, 
                        slv_gmem3_vip_VIP_HAS_BURST,
                        slv_gmem3_vip_VIP_HAS_LOCK,
                        slv_gmem3_vip_VIP_HAS_CACHE,
                        slv_gmem3_vip_VIP_HAS_REGION,
                        slv_gmem3_vip_VIP_HAS_PROT,
                        slv_gmem3_vip_VIP_HAS_QOS,
                        slv_gmem3_vip_VIP_HAS_WSTRB,
                        slv_gmem3_vip_VIP_HAS_BRESP,
                        slv_gmem3_vip_VIP_HAS_RRESP,
                        slv_gmem3_vip_VIP_HAS_ARESETN) slv_gmem3_vip_slv_mem_t;
                        
      
///////////////////////////////////////////////////////////////////////////
// How to start the verification component
///////////////////////////////////////////////////////////////////////////
//      slv_gmem3_vip_slv_t  slv_gmem3_vip_slv;
//      initial begin : START_slv_gmem3_vip_SLAVE
//        slv_gmem3_vip_slv = new("slv_gmem3_vip_slv", `slv_gmem3_vip_PATH_TO_INTERFACE);
//        slv_gmem3_vip_slv.start_slave();
//      end

endpackage : slv_gmem3_vip_pkg
