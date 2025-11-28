// solve before constraint example


class A;
  rand int a;
  rand int b;
  
  constraint c1 { a>0;b inside {[a:30]};solve a before b;}
  function void post_randomize();
    $display("the value of a =%d b=%d",a,b);
  endfunction
endclass


module tb;
  A a_h;
  initial
    begin
      a_h=new();
      a_h.randomize();
    end
endmodule 
