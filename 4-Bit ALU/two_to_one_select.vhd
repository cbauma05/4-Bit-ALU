----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:14:01 11/13/2023 
-- Design Name: 
-- Module Name:    two_to_one_select - Behavioral 
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

entity two_to_one_select is
    Port ( s : in  STD_LOGIC_VECTOR (1 downto 0);
           b : in  STD_LOGIC;
           g : out  STD_LOGIC);
end two_to_one_select;

architecture Behavioral of two_to_one_select is
signal result : STD_LOGIC;

begin
	   process (s,b)
		begin
			case s is 
					when "00" => 
						result <= '0';
					when "01" => 
						result <= b;
					when "10" => 
						result <= not b;
					when others => 
						result <= '1';
			end case;
      end process;

	g <= result;

end Behavioral;

