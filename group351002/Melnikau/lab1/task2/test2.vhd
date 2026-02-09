----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2026 11:23:57
-- Design Name: 
-- Module Name: test2 - Behavioral
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

entity test2 is
  Port ( 
        sw_i : in STD_LOGIC_VECTOR (15 downto 0);
        led_o : out STD_LOGIC_VECTOR (15 downto 0)
    );
end test2;

architecture Behavioral of test2 is

begin
led_o<=sw_i;

end Behavioral;
