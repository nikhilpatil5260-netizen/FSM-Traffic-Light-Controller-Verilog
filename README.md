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
- 5	 -   Green (Wait)	 Red
- 6	 -   Yellow	       Red
- 7	 -   Red	           Green
- 8	    Red	           Green
- 9	    Red	           Green
- 10	  Red	           Green
- 11	  Red (Wait)	   Green
- 12	  Red	           Yellow
