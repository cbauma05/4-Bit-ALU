----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:13:24 10/24/2023 
-- Design Name: 
-- Module Name:    SEVENSEGMENT_VHDL - Behavioral 
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

entity SEVENSEGMENT_VHDL is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           segs : out  STD_LOGIC_VECTOR (6 downto 0)
			  );
end SEVENSEGMENT_VHDL;

architecture Behavioral of SEVENSEGMENT_VHDL is
begin

	process(x)
	
	begin
	
		case x is
			when "0000" => segs <= "0000001"; --0
			when "0001" => segs <= "1001111"; 
			when "0010" => segs <= "0010010"; --2
			when "0011" => segs <= "0000110";
			when "0100" => segs <= "1001100";
			when "0101" => segs <= "0100100";
			when "0110" => segs <= "0100000";
			when "0111" => segs <= "0001111";
			when "1000" => segs <= "0000000";
			when "1001" => segs <= "0001100";
			when "1010" => segs <= "0001000";
			when "1011" => segs <= "1100000";
			when "1100" => segs <= "0110001";
			when "1101" => segs <= "1000010";
			when "1110" => segs <= "0110000";
			when "1111" => segs <= "0111000";
			
			when others => segs <= "1111111";
		end case;
	end process;
	


end Behavioral;

