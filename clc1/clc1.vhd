----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:07:38 11/06/2021 
-- Design Name: 
-- Module Name:    clc1 - Behavioral 
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

entity clc1 is
    Port ( sQ2 : in  STD_LOGIC;
           sQ1 : in  STD_LOGIC;
           sQ0 : in  STD_LOGIC;
           in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           cJ2 : out  STD_LOGIC;
           cK2 : out  STD_LOGIC;
           cJ1 : out  STD_LOGIC;
           cK1 : out  STD_LOGIC;
           cJ0 : out  STD_LOGIC;
           cK0 : out  STD_LOGIC);
end clc1;

architecture Behavioral of clc1 is

begin

cJ2 <= (in1 and (not(sQ2)) and sQ0) or (sQ1 and sQ0);
cK2 <= (not(sQ1)) and sQ0;
cJ1 <= ((not(in1)) and (not(sQ2))) or ((not(in2)) and sQ2) or (sQ2 and sQ0);
cK1 <= (not(sQ0));
cJ0 <= (in1 and (not(sQ2)) and (not(sQ1))) or (in2 and (not(sQ1)) and sQ1);
cK0 <= ((not(in2)) and (not(sQ2)) and (not(sQ1))) or ((not(sQ1)) and sQ2);



end Behavioral;
