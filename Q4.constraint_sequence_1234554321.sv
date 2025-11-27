class A;
rand int a[];
constraint c1 {a.size==10;}
constraint c2 
{
foreache(a[i])
if(a<5)
a[i]==i+1;
else
a[i]==10-i;
}

function void post_randomize();
$display("the value of a=%p",a);
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
