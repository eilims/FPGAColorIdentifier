library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.array_package.all;

entity Square_Root_Calculator_tb is

end Square_Root_Calculator_tb; 



architecture testbench of Square_Root_Calculator_tb is

    component Square_Root_Calculator
        Generic(array_length : Integer;
                array_vector_length : Integer);
        Port ( clk : in STD_LOGIC;
               input_array : in vector_array(0 to array_length)((array_vector_length - 1) downto 0);
               output : out STD_LOGIC_VECTOR ((array_vector_length + log_base_2(array_length)) downto 0));
    end component;
    
    
    signal array_length : Integer := 1; 
    signal array_vector_length : Integer := 3;
    signal input_array : vector_array(0 to array_length)((array_vector_length - 1) downto 0) := (others => (others => '0'));
    signal output : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');

begin

    uut: Square_Root_Calculator
        generic map (
            array_length => array_length,
            array_vector_length => array_vector_length
        )
        port map (
            input_array => input_array,
            output => output;
        );

end testbench; 