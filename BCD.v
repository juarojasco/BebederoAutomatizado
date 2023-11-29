module BCD (
output a, 
output b, 
output c, 
output d, 
output e, 
output f, 
output g, 
input D,
input C,
input B,
input A
);

//Instanciacion
decodificador_a u1(a, D, C, B, A);
decodificador_b u2(b, D, C, B, A);
decodificador_c u3(c, D, C, B, A);
decodificador_d u4(d, D, C, B, A);
decodificador_e u5(e, D, C, B, A);
decodificador_f u6(f, D, C, B, A);
decodificador_g u7(g, D, C, B, A);

endmodule

primitive decodificador_a(a, D, C, B, A);
output a;
input D, C, B, A;
table
//   D C B A   a
     0 0 0 0 : 1 ;
	  0 0 0 1 : 0 ;
	  0 0 1 0 : 1 ;
	  0 0 1 1 : 1 ;
	  0 1 0 0 : 0 ;
	  0 1 0 1 : 1 ;
	  0 1 1 0 : 1 ;
	  0 1 1 1 : 1 ;
	  1 0 0 0 : 1 ;
	  1 0 0 1 : 1 ;
endtable
endprimitive

primitive decodificador_b(b, D, C, B, A);
output b;
input D, C, B, A;
table
//   D C B A   b
     0 0 0 0 : 1 ;
	  0 0 0 1 : 1 ;
	  0 0 1 0 : 1 ;
	  0 0 1 1 : 1 ;
	  0 1 0 0 : 1 ;
	  0 1 0 1 : 0 ;
	  0 1 1 0 : 0 ;
	  0 1 1 1 : 1 ;
	  1 0 0 0 : 1 ;
	  1 0 0 1 : 1 ;
endtable
endprimitive

primitive decodificador_c(c, D, C, B, A);
output c;
input D, C, B, A;
table
//   D C B A   c
     0 0 0 0 : 1 ;
	  0 0 0 1 : 1 ;
	  0 0 1 0 : 0 ;
	  0 0 1 1 : 1 ;
	  0 1 0 0 : 1 ;
	  0 1 0 1 : 1 ;
	  0 1 1 0 : 1 ;
	  0 1 1 1 : 1 ;
	  1 0 0 0 : 1 ;
	  1 0 0 1 : 1 ;
endtable
endprimitive

primitive decodificador_d(d, D, C, B, A);
output d;
input D, C, B, A;
table
//   D C B A   d
     0 0 0 0 : 1 ;
	  0 0 0 1 : 0 ;
	  0 0 1 0 : 1 ;
	  0 0 1 1 : 1 ;
	  0 1 0 0 : 0 ;
	  0 1 0 1 : 1 ;
	  0 1 1 0 : 1 ;
	  0 1 1 1 : 0 ;
	  1 0 0 0 : 1 ;
	  1 0 0 1 : 0 ;
endtable
endprimitive

primitive decodificador_e(e, D, C, B, A);
output e;
input D, C, B, A;
table
//   D C B A   e
     0 0 0 0 : 1 ;
	  0 0 0 1 : 0 ;
	  0 0 1 0 : 1 ;
	  0 0 1 1 : 0 ;
	  0 1 0 0 : 0 ;
	  0 1 0 1 : 0 ;
	  0 1 1 0 : 1 ;
	  0 1 1 1 : 0 ;
	  1 0 0 0 : 1 ;
	  1 0 0 1 : 0 ;
endtable
endprimitive

primitive decodificador_f(f, D, C, B, A);
output f;
input D, C, B, A;
table
//   D C B A   f
     0 0 0 0 : 1 ;
	  0 0 0 1 : 0 ;
	  0 0 1 0 : 0 ;
	  0 0 1 1 : 0 ;
	  0 1 0 0 : 1 ;
	  0 1 0 1 : 1 ;
	  0 1 1 0 : 1 ;
	  0 1 1 1 : 0 ;
	  1 0 0 0 : 1 ;
	  1 0 0 1 : 1 ;
endtable
endprimitive

primitive decodificador_g(g, D, C, B, A);
output g;
input D, C, B, A;
table
//   D C B A   g
     0 0 0 0 : 0 ;
	  0 0 0 1 : 0 ;
	  0 0 1 0 : 1 ;
	  0 0 1 1 : 1 ;
	  0 1 0 0 : 1 ;
	  0 1 0 1 : 1 ;
	  0 1 1 0 : 1 ;
	  0 1 1 1 : 0 ;
	  1 0 0 0 : 1 ;
	  1 0 0 1 : 1 ;
endtable
endprimitive
