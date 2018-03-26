library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Power_Factor_2_tb is
end Power_Factor_2_tb;

architecture testbench of Power_Factor_2_tb is

    component Power_Factor_2
        Generic ( 
            Input_Length : Integer
            );
        Port ( 
                Value : in unsigned ((Input_Length - 1) downto 0);
                Power : out unsigned ((Input_Length - 1) downto 0)
                );
    end component;
    
    signal Input_Length : Integer := 4;
    
    signal Value : unsigned((Input_Length - 1) downto 0);
    signal Power : unsigned((Input_Length - 1) downto 0);
    
    signal wait_time : time := 10 ns;
    
begin

    uut: Power_Factor_2
        generic map (
            Input_Length => Input_Length
            )
        port map (  
            Value => Value,
            Power => Power
            );
                    
    test: process 
    begin
        Value <= "1000";
        wait for wait_time;
        Value <= "1111";
        wait for wait_time;
    end process test;
    
end testbench;