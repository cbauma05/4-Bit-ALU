----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:13 11/13/2023 
-- Design Name: 
-- Module Name:    select_b - Behavioral 
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

entity select_b is
    Port ( s : in   STD_LOGIC_VECTOR(1 downto 0);
           b : in  STD_LOGIC;
           g : out  STD_LOGIC);
end select_b;

architecture Behavioral of select_b is
signal result: STD_LOGIC;

begin
	process(b,s)
	begin
	
	case s is
		when "00" =>
			--AND gate
			result <= '0';
		when "01" =>
			--OR gate
			result <= b;
		when "10" =>
			--NOR gate
			result <= not b;
		when others =>
			result <= '1'; --default case
			
	end case;

	end process;		

	g <= result;

end Behavioral;

