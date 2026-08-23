// Code your design here
module halfadd(
  input a,
  input b,
  output sum,
  output carry);
  
  assign sum=a^b;
  assign carry=a & b;
  
endmodule