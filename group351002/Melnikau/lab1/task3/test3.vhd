----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2026 11:59:06
-- Design Name: 
-- Module Name: test3 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--I: 1 1 1 0 1 0 0 1
--J: 1 1 1 1 1 1 0 1
entity test3 is
Port (
 led_o: out STD_LOGIC_VECTOR (15 downto 0);
 sw_i: in STD_LOGIC_VECTOR (15 downto 0)
   );
end test3;

architecture Behavioral of test3 is

begin
led_o(7 downto 0)<= sw_i(7 downto 0) OR "11101001";
led_o(15 downto 8)<= "00000000";

end Behavioral;
