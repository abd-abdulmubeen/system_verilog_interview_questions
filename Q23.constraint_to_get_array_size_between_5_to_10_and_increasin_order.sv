//generate an araray with size between 5 to 10
// elements of the array should be in ascending order


class A;
rand int a[];
constraint c1;
constraint c2;
constraint c3;
function void post_randomize();
$display("the value of a is %p",a);
endfunction
endclass

constraint A::c1 {a.size inside {[5:10]};}
constraint A::c2 { foreach(a[i]) a[i] inside {[20:100]};}
constraint A::c3 
{
foreach(a[i])
 if(i>0) a[i]>a[i-];
 }

module tb;
A a_h;
initial
begin
a_h=new();
a_h.randomize();
end
endmodule 
