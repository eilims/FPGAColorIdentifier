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
use work.array_package.all;

entity Square_Root_Calculator is
    Generic(Array_Length : Integer := 3;
            array_vector_length : Integer := 16);
    Port ( clk : in STD_LOGIC;
           In_Data_Valid : in STD_LOGIC;
           input_array : in vector_array(0 to Array_Length)((array_vector_length - 1) downto 0);
           output : out STD_LOGIC_VECTOR ((array_vector_length + log_base_2(Array_Length)) downto 0));
end Square_Root_Calculator;

architecture Behavioral of Square_Root_Calculator is
    
    component Power_Factor_2
        Generic (
            Input_Length : Integer
            );
        Port (
            Value : in unsigned ((Input_Length - 1) downto 0);
            Power : out unsigned ((Input_Length - 1) downto 0) := (others => '0')
            );
    end component;
    
    signal shifting_value : unsigned((array_vector_length + log_base_2(Array_Length)) downto 0) := (others => '0');
    --summation of all elements within the input array
    signal summation_result : unsigned((array_vector_length + log_base_2(Array_Length)) downto 0) := (others => '0');
    --different stages of accuracy
    --5 stages of accuracy in total including the last cycle
    signal stage1 : unsigned((array_vector_length + log_base_2(Array_Length)) downto 0) := (others => '0');
    signal stage2 : unsigned((array_vector_length + log_base_2(Array_Length)) downto 0) := (others => '0');
    signal stage3 : unsigned((array_vector_length + log_base_2(Array_Length)) downto 0) := (others => '0');
    signal stage4 : unsigned((array_vector_length + log_base_2(Array_Length)) downto 0) := (others => '0');
    
begin

    factor: Power_Factor_2
        generic map (
            Input_Length => (array_vector_length + log_base_2(Array_Length))
            )
        port map (
            Value => summation_result,
            Power => shifting_value
            );
    
    --Summing together elements from passed in array
    stage1_summation: process(clk)
        variable summation_temp : unsigned((array_vector_length + log_base_2(Array_Length)) downto 0) := (others => '0');
    begin
        if (rising_edge(clk)) then
            if (In_Data_Valid = '1') then
                summation_temp := (others => '0');
                for I in 0 to Array_Length loop
                    summation_temp := summation_temp + unsigned(input_array(I));
                end loop;
                summation_result <= summation_temp;
            end if;
        end if;
    end process stage1_summation;
    
    stage1 <= 
    

end Behavioral;
