// Code your testbench here
// or browse Examples
class A;
rand int a[];
constraint c1 {a.size inside {[5:10]};}


endclass


module tb;
A a_h;
initial
begin
a_h=new();
a_h.randomize();
  foreach(a_h.a[i]) a_h.a[i]=i+1;
  $display("the value of a is %p",a_h.a);
a_h.a.shuffle();
  $display("the value of a is %p",a_h.a);
end
endmodule 

