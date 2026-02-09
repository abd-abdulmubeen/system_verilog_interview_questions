`ifndef DRIVER
`define DRIVER
`include "transaction.sv"

class driver;
  mailbox gen2drv;
  virtual intf I;
  transaction t;
  
  
  function new(mailbox gen2drv,virtual intf I);
    this.gen2drv=gen2drv;
    this.I=I;
  endfunction
  
  task run;
    forever begin
    @(posedge I.clock);
    gen2drv.get(t);
      $display("DRIVER at time=%t t.j=%d t.k=%d t.q=%d",$time,t.j,t.k,t.q);
      send_to_dut;
    end
  endtask
  
  task send_to_dut;
    I.reset<=t.reset;
    I.j<=t.j;
    I.k<=t.k;
   // I.q<=t.q;
    $display("DRIVER TO DUT at time=%t I.j=%d I.k=%d I.q=%d",$time,I.j,I.k,I.q);

  endtask
  
  
endclass



`endif
