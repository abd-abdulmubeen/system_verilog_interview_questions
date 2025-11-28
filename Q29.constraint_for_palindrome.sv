class A;
rand int a;
  constraint c1 { a inside {[10:100]}; palindrome(a)==1;}
  function bit palindrome(input int b);
    int sum=0;int a=0;
    int temp=b;
    while(b>0)
      begin
        a=b%10;
        sum=sum*10+a;
        b=b/10;
      end
    if(sum==temp) return 1; else return 0; 
  endfunction
  
  
  function void post_randomize();
  $display("the value of a is %d",a);
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
