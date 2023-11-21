----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:20:51 11/21/2023 
-- Design Name: 
-- Module Name:    FOUR_BIT_ALU - Behavioral 
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

entity FOUR_BIT_ALU is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
			  Cin: in STD_LOGIC;
           Sin : in  STD_LOGIC_VECTOR (1 downto 0);
           s2 : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Gi : out  STD_LOGIC_VECTOR(3 downto 0);
			  segs : out  STD_LOGIC_VECTOR (6 downto 0));
end FOUR_BIT_ALU;


architecture Behavioral of FOUR_BIT_ALU is

component ALU_ONE_BIT
    Port (A: in  STD_LOGIC;
			  B: in STD_LOGIC;
           Si : in  STD_LOGIC_VECTOR (1 downto 0);
			  S2: in STD_LOGIC;
           Cin : in  STD_LOGIC;
           Gi : out  STD_LOGIC;
			  Cout: out STD_LOGIC);
end component;

signal carry_out: STD_LOGIC_VECTOR (3 downto 0);
signal carry_in: STD_LOGIC_VECTOR(3 downto 0);
signal Gi_temp: STD_LOGIC_VECTOR (3 downto 0);

begin
	ALU_ONE: ALU_ONE_BIT port map (A(0),B(0),Sin,s2,Cin,Gi_temp(0),carry_out(0));
	carry_in(0) <= carry_out(0);
	
	ALU_TWO: ALU_ONE_BIT port map (A(1),B(1),Sin,s2,carry_in(0),Gi_temp(1),carry_out(1));
	carry_in(1) <= carry_out(1);
	
	ALU_THREE: ALU_ONE_BIT port map (A(2),B(2),Sin,s2,carry_in(1),Gi_temp(2),carry_out(2));
	carry_in(2) <= carry_out(2);
	
	ALU_FOUR: ALU_ONE_BIT port map (A(3),B(3),Sin,s2,carry_in(2),Gi_temp(3),carry_out(3));
	
	Cout <= carry_out(3);
	Gi <= Gi_temp;
	
	process (Gi_temp,s2)
	begin
	
		if s2 = '0' then
		case Gi_temp is
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
		else
			case Gi_temp is
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
	end if;
	end process;
	
end Behavioral;
	

