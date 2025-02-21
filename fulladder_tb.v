module full_ader_tb;

reg a,b,c;
integer i;
wire sum,carry;

full_ader_rtl DUT (.a(a),.b(b),.c(c),.sum(sum),.carry(carry));

initial
begin
  for(i=0;i<8;i=i+1)
   begin
    {a,b,c}=i;
     #10;
   end
end

initial
 $monitor("a=%0b | b=%0b | c=%0b | sum=%0b | carry=%0b", a,b,c,sum,carry);
 
endmodule

