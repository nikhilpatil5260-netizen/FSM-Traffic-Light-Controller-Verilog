`timescale 1ns/1ps

module traffic_light_controller_tb;

    // Inputs
    reg clk;
    reg sa;
    reg sb;

    // Outputs
    wire ga;
    wire gb;
    wire ra;
    wire rb;
    wire ya;
    wire yb;

    // Instantiate the DUT
    traffic_light_controller uut (.clk(clk),.sa(sa),.sb(sb),.ga(ga),.gb(gb),.ra(ra),.rb(rb),.ya(ya),.yb(yb));
	  // Clock Generation (10 ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test Stimulus
    initial begin

        // Initialize inputs
        sa = 0;
        sb = 0;

        // Wait for a few clock cycles
        #60;

        // Vehicle arrives on Road B
        sb = 1;
        #80;

        // Vehicle leaves Road B
        sb = 0;
        #40;

        // Vehicle arrives on Road A
        sa = 1;
        #40;
		  // Vehicle leaves Road A
        sa = 0;
        #40;

        // Vehicles on both roads
        sa = 1;
        sb = 1;
        #100;

        // Remove all vehicles
        sa = 0;
        sb = 0;
        #60;

        $finish;

    end
always @(posedge clk)
begin
    $display("T=%0t State=%0d SA=%b SB=%b | RA=%b YA=%b GA=%b | RB=%b YB=%b GB=%b",$time,uut.state,sa,sb,ra,ya,ga,rb,yb,gb);
end
endmodule

	 
