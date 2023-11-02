----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:16:20 10/18/2021 
-- Design Name: 
-- Module Name:    debouncer - Behavioral 
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

entity debouncer is
    Port ( data : in  STD_LOGIC;
           clockin : in  STD_LOGIC;
           dbdata : out  STD_LOGIC);
end debouncer;

architecture Behavioral of debouncer is

signal o1, o2, o3: std_logic;

begin

process(clockin)

	begin
	if rising_edge (clockin) then
		o1<=data;
		o2<=o1;
		o3<=o2;
	end if;
	
	end process;
	
	dbdata<= o1 and o2 and o3;
	
end Behavioral;

