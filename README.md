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
