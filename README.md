# FSM-Based Traffic Light Controller using Verilog HDL


This project implements a Finite State Machine (FSM) based Traffic Light Controller in Verilog HDL. The controller manages traffic flow between two intersecting roads (Road A and Road B) by switching Red, Yellow, and Green lights according to vehicle sensor inputs.

The design was simulated and verified using Xilinx ISE ISim.

# Features

- Finite State Machine (FSM) design
  
- Verilog HDL implementation
  
- Sensor-based traffic control
  
- RTL design
  
- Testbench verification
  
- Functional simulation
  
- Easy to modify timing
  
- Synthesizable design

# Tools Used
- Verilog HDL

- Xilinx ISE Design Suite

- ISim Simulator

# Inputs
- Signal	Description
  
- clk	System Clock
  
- sa	Vehicle Sensor on Road A
  
- sb	Vehicle Sensor on Road B

# Outputs
Signal	Description

- ga	Green Light Road A

- ya	Yellow Light Road A

- ra	Red Light Road A

- gb	Green Light Road B

- yb	Yellow Light Road B

- rb	Red Light Road B

# FSM State Transition

- State-Road A	-      Road B
- 0   -	Green 	 -      Red
- 1	-    Green	 -     Red
- 2	 -   Green 	  -     Red
- 3	  -  Green 	  -     Red
- 4	  -  Green 	  -     Red
- 5	 -   Green (Wait )-	 Red
- 6	 -   Yellow	  -     Red
- 7	 -   Red	     -      Green
- 8	  -  Red	        -   Green
- 9	  -   Red	    -       Green
- 10	-    Red	     -      Green
- 11	-  Red (Wait) -	   Green
- 12	 -  Red	       -    Yellow
 
# Block Diagram
<img width="617" height="419" alt="block diagram" src="https://github.com/user-attachments/assets/d23f8333-db2b-4cb0-ae78-392d85e5b894" />

# State Graph
<img width="1079" height="439" alt="state graph" src="https://github.com/user-attachments/assets/b46f0d90-da14-47bd-b9e2-6895756e45ab" />

# Waveform
<img width="1153" height="613" alt="Screenshot 2026-06-28 182119" src="https://github.com/user-attachments/assets/562a96c6-649a-42af-9db9-5e85adf72f7e" />

# Console output
This is a Full version of ISim.
Simulator is doing circuit initialization process.
Finished circuit initialization process.
T=5000 State=0 SA=0 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=15000 State=1 SA=0 SB=1 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=25000 State=2 SA=0 SB=1 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=35000 State=3 SA=0 SB=1 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=45000 State=4 SA=0 SB=1 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=55000 State=5 SA=0 SB=1 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=65000 State=6 SA=0 SB=1 | RA=0 YA=1 GA=0 | RB=1 YB=0 GB=0
T=75000 State=7 SA=0 SB=1 | RA=1 YA=0 GA=0 | RB=0 YB=0 GB=1
T=85000 State=8 SA=0 SB=1 | RA=1 YA=0 GA=0 | RB=0 YB=0 GB=1
T=95000 State=9 SA=0 SB=0 | RA=1 YA=0 GA=0 | RB=0 YB=0 GB=1
T=105000 State=10 SA=0 SB=0 | RA=1 YA=0 GA=0 | RB=0 YB=0 GB=1
T=115000 State=11 SA=0 SB=0 | RA=1 YA=0 GA=0 | RB=0 YB=0 GB=1
T=125000 State=12 SA=0 SB=0 | RA=1 YA=0 GA=0 | RB=0 YB=1 GB=0
T=135000 State=0 SA=1 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=145000 State=1 SA=1 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=155000 State=2 SA=1 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=165000 State=3 SA=1 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=175000 State=4 SA=0 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=185000 State=5 SA=0 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=195000 State=5 SA=0 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=205000 State=5 SA=0 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=215000 State=5 SA=1 SB=1 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=225000 State=6 SA=1 SB=1 | RA=0 YA=1 GA=0 | RB=1 YB=0 GB=0
T=235000 State=7 SA=1 SB=1 | RA=1 YA=0 GA=0 | RB=0 YB=0 GB=1
T=245000 State=8 SA=1 SB=1 | RA=1 YA=0 GA=0 | RB=0 YB=0 GB=1
T=255000 State=9 SA=1 SB=1 | RA=1 YA=0 GA=0 | RB=0 YB=0 GB=1
T=265000 State=10 SA=1 SB=1 | RA=1 YA=0 GA=0 | RB=0 YB=0 GB=1
T=275000 State=11 SA=1 SB=1 | RA=1 YA=0 GA=0 | RB=0 YB=0 GB=1
T=285000 State=12 SA=1 SB=1 | RA=1 YA=0 GA=0 | RB=0 YB=1 GB=0
T=295000 State=0 SA=1 SB=1 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=305000 State=1 SA=1 SB=1 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=315000 State=2 SA=0 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=325000 State=3 SA=0 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=335000 State=4 SA=0 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=345000 State=5 SA=0 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=355000 State=5 SA=0 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
T=365000 State=5 SA=0 SB=0 | RA=0 YA=0 GA=1 | RB=1 YB=0 GB=0
Stopped at time : 370 ns : File "/home/ise/Traffic_Light_Controller/Traffic_Light_Controller.v" Line 171
ISim>  
