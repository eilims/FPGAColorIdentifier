----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2018 07:23:38 PM
-- Design Name: 
-- Module Name: Square_Root_Calculator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: This module will compute the square root of all vectors in the array summed together
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

package array_package is
    type vector_array is array(Integer range <>) of std_logic_vector;
    function log_base_2 (X : Integer) return Integer;
end package;

package body array_package is
    function log_base_2 (X : Integer) return Integer is
        variable count : Integer := 0;
        variable input : Integer := 0;
    begin
        input := X;
        while (input /= 0) loop
            input := input mod 2;
            count := count + 1;
        end loop;
        return count + 1;
    end function log_base_2;
end array_package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.array_package.all;

entity Square_Root_Calculator is
    Generic(array_length : Integer := 3;
            array_vector_length : Integer := 16);
    Port ( clk : in STD_LOGIC;
           input_array : in vector_array(0 to array_length)((array_vector_length - 1) downto 0);
           output : out STD_LOGIC_VECTOR ((array_vector_length + log_base_2(array_length)) downto 0));
end Square_Root_Calculator;

architecture Behavioral of Square_Root_Calculator is
    
    --summation of all elements within the input array
    signal summation_result : unsigned((array_vector_length + log_base_2(array_length)) downto 0) := (others => '0');
begin

    square_root: process(clk)
        variable summation_temp : unsigned((array_vector_length + log_base_2(array_length)) downto 0) := (others => '0');
    begin
        summation_temp := (others => '0');
        for I in 0 to array_length loop
            summation_temp := summation_temp + unsigned(input_array(I));
        end loop;
  
        
    end process square_root;

end Behavioral;
