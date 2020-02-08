--------------------------------------------------------------------------------
--                                                                            --
--               Honors Assignment 1 Module 1 Course 2                   	  --
--                                                                            --
--------------------------------------------------------------------------------
--
-- 
-- @file AAC2M1H1solved.vhd
-- @brief Honors Assignment 1-001 Example code with errors to be found
-- @version: 1.0 
-- Date of current revision:  @date 2019-07-21  
-- Target FPGA: [Intel Altera MAX10] 
-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
--             [Quartus Prime 16.1]  for place and route if applied
--             
--  Functional Description:  This file contains the VHDL which describes the 
--               FPGA implementation of a 1-bit full adder. The inputs are A, B
--		 and Cin which are single bits and outputs are Sum and Cout which
--		 are the Sum and Carry out. 
--  Hierarchy:  There is only one level in this simple design.
--  
--  Designed for: Coursera 
--                
--  Designed by:  @author Sanju Prakash Kannioth
--                University of Colorado
--
--      Copyright (c) 2019 by Tim Scherr
--
-- Redistribution, modification or use of this software in source or binary
-- forms is permitted as long as the files maintain this copyright. Users are
-- permitted to modify this and use it to learn about the field of HDl code.
-- Tim Scherr and the University of Colorado are not liable for any misuse
-- of this material.
------------------------------------------------------------------------------
-- 


library ieee;
use ieee.std_logic_1164.all;

entity FullAdd is port ( 
A, B, Cin: in std_logic; 
Sum, Cout: out std_logic 
); 
end FullAdd;

architecture behavioral of FullAdd is
	signal wire1 : std_logic;
	signal wire2 : std_logic;
	signal wire3 : std_logic;
begin
  wire1 <= A xor B;
  wire2 <= wire1 and Cin;
  wire3 <= A and B;
 
  Sum   <= wire1 xor Cin;
  Cout  <= wire2 or wire3;

end behavioral;