class A;
rand int a;
rand int b[];
  constraint c0 {a inside {[5:10]};}
constraint c1 {b.size==a;}
constraint c2 
{
foreach(b[i])
if(i==0) b[i]==0;
else if(i==1) b[i]==1;
else b[i]= b[i-1]+b[i-2];
}

function void post_randomize();
$display("the value of b is %p",b);
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
