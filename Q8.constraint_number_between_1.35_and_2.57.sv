class A;
rand int a;
real b;
constraint c1{a inside {[1350:2570]};};
function void post_randomize();
b=a/1000.0;
$display("the value of b is %f",b);
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
