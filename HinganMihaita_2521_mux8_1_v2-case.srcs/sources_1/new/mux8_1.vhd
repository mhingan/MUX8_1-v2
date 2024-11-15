library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8 is
    Port (
        i0 : in STD_LOGIC;
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
        y  : out STD_LOGIC
    );
end mux8;

architecture Behavioral of mux8 is
begin
    process(i0, i1, i2, i3, i4, i5, i6, i7, a1, a2, a3)
        variable select_signal : STD_LOGIC_VECTOR(2 downto 0);
    begin
        -- Concatenate a1, a2 ?i a3 pentru a forma select_signal
        select_signal := a1 & a2 & a3;

        case (select_signal) is
            when "000" => y <= i0;
            when "001" => y <= i1;
            when "010" => y <= i2;
            when "011" => y <= i3;
            when "100" => y <= i4;
            when "101" => y <= i5;
            when "110" => y <= i6;
            when "111" => y <= i7;
            when others => y <= '0'; 
        end case;
    end process;
end Behavioral;
