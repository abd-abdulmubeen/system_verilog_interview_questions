`ifndef INTERFACE
`define INTERFACE
interface intf(input logic clock);
  logic reset;
  logic j;
  logic k;
  logic q;
  clocking drv_cb @(posedge clock);
    output reset;
    output j;
    output k;
    input q;
  endclocking
  
  
  clocking mon_cb @(posedge clock);
    input reset;
    input j;
    input k;
    input q;
  endclocking
endinterface
`endif
