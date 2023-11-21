----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:27:51 11/13/2023 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder is
    Port ( a_fa : in  STD_LOGIC;
           b_fa : in  STD_LOGIC;
           z_fa : in  STD_LOGIC;
           sum_fa : out  STD_LOGIC;
           c_fa : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

	component half_adder
		 Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
	end component;
	
	signal ha_sum, ha_carry, final_carry: std_logic;
	
begin
	HA1: half_adder
		port map (a_fa,b_fa,ha_sum,ha_carry);
	HA2: half_adder
		port map (ha_sum,z_fa,sum_fa, final_carry);
		
		c_fa <= ha_carry or final_carry;
		
end Behavioral;

