--biblioteca
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--entidade
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seven_segment_cntrl is
    
    port(
        input: in std_logic_vector(3 downto 0);
        segs: out std_logic_vector(6 downto 0)
    );
end entity seven_segment_cntrl;

--arquitetura
--architecture RTL of entityName is
architecture RTL of seven_segment_cntrl is 
begin
    process (input)
    begin
        case input is
            --anodo comum nivel alto desliga 
            when "0000" =>
                --0
                segs <= "0111111";
            when "0001" =>
                --1
                segs <= "1001111";
            when "0010" =>
                --2
                segs <= "0010010";
            when "0011" =>
                --3
                segs <= "0000110";                      
            when "0100" =>
                --4
                segs <= "0001100";            
            when "0101" =>
                --5
                segs <= "0100100";
            when "0110" =>  
                --6
                segs <= "0100000";
            when "0111" =>  
                --7
                segs <= "0001111";
            when "1000" =>  
                --8
                segs <= "0000000";
            when "1001" =>  
                --9
                segs <= "0000100";                                
            when others =>  
                segs <= "0000000";
        end case;     
    end process;    
    
end architecture RTL;
