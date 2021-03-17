library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
    
end entity testbench;

architecture RTL of testbench is
    signal inputT : std_logic_vector (3 downto 0);
    signal segsT : std_logic_vector (6 downto 0);

begin
    dut_seven: entity work.seven_segment_cntrl
        port map(
        --esqerda _vhd >> direita testbench
        input => inputT,
        segs => segsT
        );
        
    process
    begin
        inputT <= "0000";    
        wait for 10 ns;
        inputT <= "0001";    
        wait for 10 ns;       
        inputT <= "0010";    
        wait for 10 ns;
        inputT <= "0011";    
        wait for 10 ns;
        inputT <= "0100";    
        wait for 10 ns;        
        inputT <= "0101";    
        wait for 10 ns;        
        inputT <= "0110";    
        wait for 10 ns;        
        inputT <= "0111";    
        wait for 10 ns;
        inputT <= "1000";   
        wait for 10 ns;
        inputT <= "1001";                           
        wait;
        
    end process;
        
end architecture RTL;