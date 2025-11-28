// create dynamic, static array and queue with size 
// between 5 to 10 and even numbers


class A;
rand int a[10];
rand int b[];
rand int c[$];
constraint c1{b.size inside {[5:10]}; c.size inside {[5:10]};}
constraint c2
{
foreach(a[i]) a[i] inside {[10:30]} && a[i]%2==0;
foreach(b[i])  b[i] inside {[10:30]} && b[i]%2==0;
foreach(c[i])  c[i] inside {[10:30]} && c[i]%2==0;
}

function void post_randomize();
$display("the value of a is %p",a);
$display("the value of b is %p",b);
$display("the value of c is %p",c);
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
