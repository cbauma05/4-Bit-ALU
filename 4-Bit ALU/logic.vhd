----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:39:13 11/13/2023 
-- Design Name: 
-- Module Name:    logic - Behavioral 
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

entity logic is
    Port ( a : in STD_LOGIC;
			  b: in STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC);
end logic;

architecture Behavioral of logic is
	signal result : STD_LOGIC;
begin

	process(a,b,s)
	begin
	
	case s is
		when "00" =>
			--AND gate
			result <= a and b;
		when "01" =>
			--OR gate
			result <= a or b;
		when "10" =>
			--XOR gate
			result <= (a xor b);
		when "11" =>
			--NOT gate
			result <= not a;
		when others =>
			result <= '0'; --default case
			
	end case;

	end process;		

	y <= result;

end Behavioral;

