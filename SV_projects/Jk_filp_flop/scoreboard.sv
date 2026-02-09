`ifndef SCOREBOARD
`define SCOREBOARD
`include "transaction.sv"

class scoreboard;
  
  mailbox mon2sb;
 transaction t;
  reg qprev;
  
  function new(mailbox mon2sb);
  this.mon2sb=mon2sb;
  endfunction
  
  task run;
    forever begin
    mon2sb.get(t);
      $display("SCOREBOARD time=%t t.j=%d t.k=%d t.q=%d",$time,t.j,t.k,t.q);

      if(t.q== t.j&qprev | t.k&!qprev)
        $display("test passed with values t.j=%d t.k=%d t.q=%d qprev=%d  at time =%0t",t.j,t.k,t.q,qprev,$time);
      else
        $display("test failed with values t.j=%d t.k=%d t.q=%d qprev=%d  at time =%0t",t.j,t.k,t.q,qprev,$time);
        qprev=t.q;
    end   
  endtask
endclass
`endif
