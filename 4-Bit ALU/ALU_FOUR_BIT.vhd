----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:29:46 11/20/2023 
-- Design Name: 
-- Module Name:    ALU_FOUR_BIT - Behavioral 
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

entity ALU_FOUR_BIT is
    Port (
	 input_a : in  STD_LOGIC_VECTOR(3 downto 0);
           input_b : in  STD_LOGIC_VECTOR (3 downto 0);
			  Cin: in STD_LOGIC;
           Sin : in  STD_LOGIC_VECTOR (1 downto 0);
			  S2 : in STD_LOGIC;
           Gi : out  STD_LOGIC_VECTOR(3 downto 0);
			  Cout: out STD_LOGIC);
end ALU_FOUR_BIT;

architecture Behavioral of ALU_FOUR_BIT is

   component ALU_ONE_BIT
	Port (A: in  STD_LOGIC;
			  B: in STD_LOGIC;
           Si : in  STD_LOGIC_VECTOR (1 downto 0);
			  S2: in STD_LOGIC;
           Cin : in  STD_LOGIC;
           Gi : out  STD_LOGIC;
			  Cout: out STD_LOGIC);
	end component
	
	signal carry_out: STD_LOGIC_VECTOR(2 downto 0);
	
	begin
	
	--ALU_ONE: ALU_ONE_BIT port map (input_a(0),input_b(0),Sin,S2,Cin,Gi(0),Cout);
	--ALU_TWO: ALU_ONE_BIT port map (input_a(1),input_b(1),Sin,S2,Cout,Gi(1),carry_out(0));
	--ALU_THREE: ALU_ONE_BIT port map (input_a(2),input_b(2),Sin,S2,carry_out(0),Gi(2),carry_out(1));
	--ALU_FOUR: ALU_ONE_BIT port map (input_a(3),input_b(3),Sin,S2,carry_out(1),Gi(3),carry_out(2));

end Behavioral;

