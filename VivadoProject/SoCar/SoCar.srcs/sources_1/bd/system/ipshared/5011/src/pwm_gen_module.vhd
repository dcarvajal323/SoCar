library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwm_gen_module is
    generic (
        DUTY_CYCLE_IN_WIDTH : positive := 4;
        CLK_PRESCALE : positive := 1000
    );
    port (
        clk : in std_logic;
        dutyCycle : in std_logic_vector(DUTY_CYCLE_IN_WIDTH-1 downto 0);
        rst : in std_logic;
        outPulse : out std_logic
    );
end pwm_gen_module;

architecture arch of pwm_gen_module is
    signal outCount : integer := 0;
    signal prescaleCount : integer := 0;
begin
    process (clk, rst)
    begin
       -- if (rst = '0') then 
       --     outCount <= 0;
        --    prescaleCount <= 0;
       -- els
        if (rising_edge(clk)) then
            --if (prescaleCount = 0) then
                if (outCount < to_integer(unsigned(dutyCycle))) then
                    outPulse <= '1';
                else
                    outPulse <= '0';
                end if;
                
                outCount <= outCount + 1;
                if (outCount >= 2**DUTY_CYCLE_IN_WIDTH) then
                    outCount <= 0;
                end if;
            --end if;
            
            --prescaleCount <= prescaleCount + 1;
            --if (prescaleCount >= CLK_PRESCALE) then
            --    prescaleCount <= 0;
           -- end if;
        end if;
    end process;
end arch;