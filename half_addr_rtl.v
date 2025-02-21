module half_adder_rtl(input a,b,output reg sum,carry);

always@(*)
begin
case({a,b})
2'b00:{sum,carry}=2'b00;
2'b01:{sum,carry}=2'b10;
2'b10:{sum,carry}=2'b10;
2'b11:{sum,carry}=2'b01;
default {sum,carry}=2'bxx;
endcase
end
endmodule
