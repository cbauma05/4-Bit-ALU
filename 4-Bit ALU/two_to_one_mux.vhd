----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:59:49 11/20/2023 
-- Design Name: 
-- Module Name:    two_to_one_mux - Behavioral 
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

entity two_to_one_mux is
    Port ( S_in : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Gi_out : out  STD_LOGIC);
end two_to_one_mux;

architecture Behavioral of two_to_one_mux is
signal result : STD_LOGIC;

begin
	process(S_in,A,B)
	begin
		if S_in = '0' then
			result <= A;
		else
			result<=B;
		end if;
		
	end process;
	
	Gi_out <= result;

end Behavioral;

