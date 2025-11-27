//32 bit number which contains 12 ones which are not consequent


class A;
rand bit[31:0]a;
constraint c1 { $countones(a)==12;}
  constraint c2
  {
    foreach(a[i])
      if(i<31)
        if(a[i]) a[i+1]==0;
  }
function void post_randomize();
$display("the value of a is %b",a);
endfunction
endclass

module tb;
A a_h;
initial
begin
a_h=new();
repeat(10)
begin
a_h.randomize();
end
end
endmodule 
