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
