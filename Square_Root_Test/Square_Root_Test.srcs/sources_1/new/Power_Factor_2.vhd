----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/22/2018 07:35:09 PM
-- Design Name: 
-- Module Name: Power_Factor_2 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Power_Factor_2 is
    Generic ( Input_Length : Integer);
    Port ( Value : in unsigned ((Input_Length - 1) downto 0);
           Power : out unsigned ((Input_Length - 1) downto 0));
end Power_Factor_2;

architecture Behavioral of Power_Factor_2 is

begin

    factor_calc : process(Value)
        variable factor : Integer := 1;
        variable count : Integer := 0;
    begin
        while((factor < Value) and (Value mod to_unsigned(factor, Input_Length) = 0)) loop
            factor := factor * 2;
            count := count + 1;
        end loop;
        if (factor < Value) then
            Power <= to_unsigned(count, (Input_Length));
        elsif (factor = Value or factor < value) then
            Power <= to_unsigned(count - 1, (Input_Length));
        end if;
        
    end process factor_calc;


end Behavioral;
