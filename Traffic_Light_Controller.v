`timescale 1ns / 1ps
module traffic_light_controller(clk,sa,sb,ga,gb,ra,rb,ya,yb);
input clk,sa,sb;
output ra,rb,ga,gb,ya,yb;
reg ra_tmp,rb_tmp,ga_tmp,gb_tmp,ya_tmp,yb_tmp;
reg[3:0] state,next_state;
parameter[1:0] r=2'b00;
parameter[1:0] g=2'b01;
parameter[1:0] y=2'b10;
wire[1:0] lighta;
wire [1:0] lightb;

assign ra=ra_tmp;
assign rb=rb_tmp;
assign ga=ga_tmp;
assign gb=gb_tmp;
assign ya=ya_tmp;
assign yb=yb_tmp;
initial begin
state =4'd0;
end
always @(*)
begin ra_tmp =1'b0;
rb_tmp =1'b0;
ga_tmp =1'b0;
gb_tmp =1'b0;
ya_tmp =1'b0;
yb_tmp =1'b0;
next_state=4'd0;
case (state)
4'd0,4'd1,4'd2,4'd3,4'd4:
begin
ga_tmp = 1'b1 ;
rb_tmp = 1'b1 ;
 next_state = state + 1 ;
 end
 4'd5 :
 begin
 ga_tmp = 1'b1 ;
 rb_tmp = 1'b1 ;
 if (sb == 1'b1)
 next_state =4'd6 ;
 else
 next_state =4'd5 ; 
 end
 4'd6 :
 begin
 ya_tmp = 1'b1 ;
 rb_tmp = 1'b1 ;
 next_state = 4'd7 ;
 end
 4'd7, 4'd8, 4'd9, 4'd10 :
 begin
 ra_tmp = 1'b1 ;
 gb_tmp = 1'b1 ;
 next_state= state + 1 ;
 end
 4'd11 :
 begin
 ra_tmp = 1'b1 ;
 gb_tmp = 1'b1 ;
 if (sa == 1'b1 || sb == 1'b0)
 begin
 next_state = 4'd12 ;
 end 
 else
 begin
 next_state = 4'd11 ;
 end 
 end
 4'd12 :
 begin
 ra_tmp = 1'b1 ;
 yb_tmp = 1'b1 ;
 next_state = 4'd0 ;
 end
 default:
 begin
 next_state=4'd0;
 end
 endcase
end
always @(posedge clk)
begin
 state <= next_state ;
end
assign lighta = (ra) ? r : (ya) ? y : (ga) ? g : 2'b00;
assign lightb = (rb) ? r : (yb) ? y : (gb) ? g : 2'b00;
endmodule