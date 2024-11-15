----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2024 09:06:16 PM
-- Design Name: 
-- Module Name: test_mux8 - Behavioral
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

entity test_mux8 is
--  Port ( );
end test_mux8;

architecture Behavioral of test_mux8 is

component mux8 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           i4 : in STD_LOGIC;
           i5 : in STD_LOGIC;
           i6 : in STD_LOGIC;
           i7 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           y : out STD_LOGIC);
end component mux8;

signal i0, i1, i2, i3, i4, i5, i6, i7, a1, a2, a3, y: std_logic;

begin

U_test: mux8 port map (i0, i1, i2, i3, i4, i5, i6, i7, a1, a2, a3, y);

process
    begin
        a1 <= '0'; wait for 512 ns;
        a1 <= '1'; wait for 512 ns;
end process;

process
    begin
        a2 <= '0'; wait for 256 ns;
        a2 <= '1'; wait for 256 ns;
end process;

process
    begin
        a3 <= '0'; wait for 128 ns;
        a3 <= '1'; wait for 128 ns;
end process;

process
    begin
        i0 <= '0'; wait for 64 ns;
        i0 <= '1'; wait for 64 ns;
end process;

process
    begin
        i1 <= '0'; wait for 32 ns;
        i1 <= '1'; wait for 32 ns;
end process;

process
    begin
        i2 <= '0'; wait for 16 ns;
        i2 <= '1'; wait for 16 ns;
end process;

process
    begin
        i3 <= '0'; wait for 8 ns;
        i3 <= '1'; wait for 8 ns;
end process;

process
    begin
        i4 <= '0'; wait for 4 ns;
        i4 <= '1'; wait for 4 ns;
end process;

process
    begin
        i5 <= '0'; wait for 2 ns;
        i5 <= '1'; wait for 2 ns;
end process;

process
    begin
        i6 <= '0'; wait for 1 ns;
        i6 <= '1'; wait for 1 ns;
end process;

process
    begin
        i7 <= '0'; wait for 0.5 ns;
        i7 <= '1'; wait for 0.5 ns;
end process;


end Behavioral;