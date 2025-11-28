//prime number between 1 and 100


class A;
rand int a;
constraint c1 { a inside {[20:50]}; prime(a);}

function bit prime(input int b);
for(int i=2;i<b;i++)
begin
if(b%i==0)
return 0;
else
return 1;
endfunction

function void post_randomize();
$display("the value of a is %d",a);
endfunction
rand int 
endclass

module tb;
A a_h;
initial
begin
a_h=new();
a_h.randomize();
end
endmodule 
