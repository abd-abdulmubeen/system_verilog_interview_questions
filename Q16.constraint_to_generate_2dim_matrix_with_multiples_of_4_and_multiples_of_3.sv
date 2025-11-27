// 2 dimenssional matrix firs four elements shuould be 
// multiple of 4 and next 4 should be multiple of 3 and not multiple of2 


class A;
rand int a[2][4];
constraint c1 
{
  foreach(a[i])
foreach(a[i][j])
if(i==0)
a[i][j]%4==0;
else
a[i][j]%2!=0 && a[i][j]%3==0;
}

constraint c2 
{
  foreach(a[i])
foreach(a[i][j])
{
  a[i][j] inside {[0:100]};
}
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

