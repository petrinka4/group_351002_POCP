----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2026 12:23:13
-- Design Name: 
-- Module Name: test4 - Behavioral
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
--1 -> 0001
--4 -> 0100
--9 -> 1001
--F -> 1111


--комбинации, где Y=1:
--0000
--0001
--0010
--0011
  
--0100
--0111
--1010
--1100
--
--если первые два нуля то будет 1 (формула для этой группы: (!A) AND (!B))
--для 0100 и 1100 разница в первый бит -> склеиваем (формула B AND (!C) AND (!D))
-- для 0111 склеиваем с 0011 для уменьшения колво узлов на 1 (формула (!A) AND C AND D)
-- для 1010 склеиваем с 0010 (формула (!B) AND C AND (!D))
-- итоговая ((!A) AND (!B)) OR (B AND (!C) AND (!D)) OR ((!A) AND C AND D) OR ((!B) AND C AND (!D))
entity test4 is
  Port ( 
  led_o: out STD_LOGIC_VECTOR (15 downto 0);
 sw_i: in STD_LOGIC_VECTOR (15 downto 0)
  );
end test4;

architecture Behavioral of test4 is
    signal A,B,C,D :std_logic;
begin
    A <= sw_i(3); -- cтарший
    B <= sw_i(2);
    C <= sw_i(1);
    D <= sw_i(0); -- младший

    led_o(0) <= (NOT A AND NOT B) OR 
                (NOT A AND C AND D) OR 
                (B AND NOT C AND NOT D) OR 
                (NOT B AND C AND NOT D);


    led_o(15 downto 1) <= "000000000000000";
end Behavioral;
