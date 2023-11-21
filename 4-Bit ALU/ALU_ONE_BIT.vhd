----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:11:42 11/20/2023 
-- Design Name: 
-- Module Name:    ALU_ONE_BIT - Behavioral 
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

entity ALU_ONE_BIT is
    Port (A: in  STD_LOGIC;
			  B: in STD_LOGIC;
           Si : in  STD_LOGIC_VECTOR (1 downto 0);
			  S2: in STD_LOGIC;
           Cin : in  STD_LOGIC;
           Gi : out  STD_LOGIC;
			  Cout: out STD_LOGIC);
end ALU_ONE_BIT;

architecture Behavioral of ALU_ONE_BIT is

	component ArithmeticUnit 
	Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
			  Sin : in STD_LOGIC_VECTOR (1 downto 0);
           Cout : out  STD_LOGIC;
           Gout : out  STD_LOGIC); 
	end component;
	
	
	component logic 
		Port ( a : in STD_LOGIC;
			  b: in STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC);
	end component;
	
	component two_to_one_mux
		 Port ( S_in : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Gi_out : out  STD_LOGIC);
	end component;
	
	
	signal gi_out_logic, gi_out_arithmetic: STD_LOGIC;
	
	begin
	
	OneBitArithmeticUnit: ArithmeticUnit port map (A,B,Cin,Si,Cout,gi_out_arithmetic);
	OneBitLogicUnit: logic port map (A,B,Si,gi_out_logic);
	choose_unit: two_to_one_mux port map (S2,gi_out_arithmetic,gi_out_logic,Gi);
	
	

end Behavioral;

