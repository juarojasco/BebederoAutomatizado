module Proyecto ( input clk, 
					   input Eco, 
					   output reg trig,
					   output reg [0:0] alarma,
					   output reg [0:0] alarmados
					  );
													
reg [26:0] cont;
reg [26:0] dist;
reg [26:0] cont_t;


initial 
begin
cont = 0;
trig = clk;
dist = 0;

cont_t = 0;

end

always @(posedge clk)
begin
	cont = cont + 1;
	
	if (cont < 1024)
	
			trig = 1'b1;
	else
		begin
			trig = 1'b0;
				if (Eco == 1)
					begin
						cont_t = cont_t + 1;
						dist = (cont_t*34/100_000);
					end
				else if (Eco == 0)
					begin
						cont_t = 0;
					end
		end
end

always @(posedge clk)
begin
if (dist <= (14+(8)))
    begin 
        alarma <= 1;
        alarmados <=1;
    end
else if (dist > (14+(8)))
    begin 
        alarma <= 0;
        alarmados <=0;
    end
end



Displays distt(clk,dist,display1,display2,display3);



endmodule