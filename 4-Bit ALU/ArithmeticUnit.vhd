----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:46:02 11/13/2023 
-- Design Name: 
-- Module Name:    ArithmeticUnit - Behavioral 
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

entity ArithmeticUnit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
			  Sin : in STD_LOGIC_VECTOR (1 downto 0);
           Cout : out  STD_LOGIC;
           Gout : out  STD_LOGIC);
end ArithmeticUnit;

architecture Behavioral of ArithmeticUnit is

	component full_adder
		    Port ( a_fa : in  STD_LOGIC;
           b_fa : in  STD_LOGIC;
           z_fa : in  STD_LOGIC;
           sum_fa : out  STD_LOGIC;
           c_fa : out  STD_LOGIC);
	end component;
	
	component select_b 
		Port ( s : in   STD_LOGIC_VECTOR(1 downto 0);
           b : in  STD_LOGIC;
           g : out  STD_LOGIC);
	end component;
	
	signal Gin: STD_LOGIC; -- Gin output from select_b
	
begin

	B_select: select_b port map (Sin,B,Gin);

	FA: full_adder port map (A,Gin,Cin,Gout,Cout);
	
end Behavioral;

