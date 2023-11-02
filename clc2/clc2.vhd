----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:05:30 11/06/2021 
-- Design Name: 
-- Module Name:    clc2 - Behavioral 
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

entity clc2 is
    Port ( stare2 : in  STD_LOGIC;
           stare1 : in  STD_LOGIC;
           stare0 : in  STD_LOGIC;
           led3 : out  STD_LOGIC;
           led2 : out  STD_LOGIC;
           led1 : out  STD_LOGIC;
           led0 : out  STD_LOGIC);
end clc2;

architecture Behavioral of clc2 is

begin

led3 <= (stare2 and (not(stare1))) or stare0;
led2 <= stare1 or (stare2 and stare1);
led1 <= (stare1 and (not(stare0))) or (stare2 and (not(stare1))) or (stare2 and (not(stare0)));
led0 <= (stare1 and (not(stare2)) and (not(stare0))) or (stare1 and stare0 and stare2);

end Behavioral;

