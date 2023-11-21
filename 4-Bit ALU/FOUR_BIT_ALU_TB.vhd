--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:36:41 11/21/2023
-- Design Name:   
-- Module Name:   /home/ise/ISE/Group14_Lab7/FOUR_BIT_ALU_TB.vhd
-- Project Name:  Group14_Lab7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FOUR_BIT_ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY FOUR_BIT_ALU_TB IS
END FOUR_BIT_ALU_TB;
 
ARCHITECTURE behavior OF FOUR_BIT_ALU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FOUR_BIT_ALU
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Sin : IN  std_logic_vector(1 downto 0);
         S2 : IN  std_logic;
         Cout : OUT  std_logic;
         Gi : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';
   signal Sin : std_logic_vector(1 downto 0) := (others => '0');
   signal S2 : std_logic := '0';

 	--Outputs
   signal Cout : std_logic;
   signal Gi : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FOUR_BIT_ALU PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Sin => Sin,
          S2 => S2,
          Cout => Cout,
          Gi => Gi
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		wait for 100 ns;
		Sin <= "00";
		s2 <= '0';
		Cin <= '0';
		A <= "1101";
		B <= "1101";
      wait for 100 ns; --transfer case
		
		Sin <= "00";
		s2 <= '0';
		Cin <= '1';
		A <= "1101";
		B <= "1101";
		wait for 100 ns; --increment A
		
		Sin <= "01";
		s2 <= '0';
		Cin <= '0';
		A <= "1101";
		B <= "0010";
		wait for 100 ns; --Addition
		
		Sin <= "01";
		s2 <= '0';
		Cin <= '1';
		A <= "1101";
		B <= "0010";
		wait for 100 ns; --Add with carry input of 1
		
		Sin <= "10";
		s2 <= '0';
		Cin <= '0';
		A <= "1101";
		B <= "0010";
		wait for 100 ns; --A plus 1's complement of B
		
		Sin <= "10";
		s2 <= '0';
		Cin <= '1';
		A <= "1101";
		B <= "0010";
		wait for 100 ns; --subtraction
		
		Sin <= "11";
		s2 <= '0';
		Cin <= '0';
		A <= "1101";
		B <= "0010";
		wait for 100 ns; --Decrement A
		
		Sin <= "11";
		s2 <= '0';
		Cin <= '1';
		A <= "1101";
		B <= "0010";
		wait for 100 ns; --Transfer A
		
		Sin <= "00";
		s2 <= '1';
		Cin <= '0';
		A <= "1101";
		B <= "0010";
		wait for 100 ns; --AND
		
		Sin <= "01";
		s2 <= '1';
		Cin <= '0';
		A <= "1101";
		B <= "0010";
		wait for 100 ns; --OR
		
		Sin <= "10";
		s2 <= '1';
		Cin <= '0';
		A <= "1101";
		B <= "0010";
		wait for 100 ns; --XOR
		
		Sin <= "11";
		s2 <= '1';
		Cin <= '0';
		A <= "1101";
		B <= "0010";
		wait for 100 ns; --NOT (1's Complement)
		
		
		
		
		
      

      -- insert stimulus here 

      wait;
   end process;

END;
