// unique values in array without using the unique keyword


class A;
rand int a[];
constraint c1 { a.size==10;}
constraint c2 
{
foreach(a[i])
{
foreach(a[j]) 
if(i!=j) a[i]!=a[j];
}
}


constraint c3 { foreach(a[i] ) a[i] inside {[20:50]};} 
function void post_randomize();
$display("the values of a is %p",a);
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
