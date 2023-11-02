----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:31:25 10/15/2019 
-- Design Name: 
-- Module Name:    gen1Hz - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity gen3Hz is
    Port ( clk50 : in  STD_LOGIC;
           ceas3Hz : out  STD_LOGIC);
end gen3Hz;

architecture Behavioral of gen3Hz is

--definim semnale intermediare
signal count : std_logic_vector(22 downto 0):="00000000000000000000000";
signal output : std_logic:='0';

begin
process (clk50) 
begin
   if clk50='1' and clk50'event then
      count <= count + 1;
	   if count = "11111110010100000010101" then
				output<=not output;
				if count = "11111110010100000010101" then
					 count<="00000000000000000000000"; 
				end if;
		end if;
	end if;
ceas3Hz<=output;

end process;

end Behavioral;

