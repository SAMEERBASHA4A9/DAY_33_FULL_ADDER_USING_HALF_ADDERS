module full_ader_rtl(input a,b,c,output sum,carry);

wire w1,w2,w3;

half_adder_rtl ONE (.a(a),.b(b),.sum(w1),.carry(w2));
half_adder_rtl TWO (.a(w1),.b(c),.sum(sum),.carry(w3));
or CARRY (carry,w2,w3);

endmodule



