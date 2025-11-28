class A;
  rand int a[10];
  
  constraint c1 
  {
    foreach(a[i])
    {
      if(i==0) a[i] inside {[10:20]};
      else a[i]==a[i-1]+1;
	  // if we need gap of atleast 2 or 3
	  // a[i]==a[i-1]+2;
    }
  }

  function void post_randomize();
    $display("the value of a is %p",a);
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
