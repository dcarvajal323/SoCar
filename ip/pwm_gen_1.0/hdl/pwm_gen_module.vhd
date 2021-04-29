library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwm_gen_module is
    generic (
        DUTY_CYCLE_IN_WIDTH : positive := 4
    );
    port (
        clk : in std_logic;
        dutyCycle : in std_logic_vector(DUTY_CYCLE_IN_WIDTH-1 downto 0);
        rst : in std_logic;
        outPulse : out std_logic
    );
end pwm_gen_module;

architecture arch of pwm_gen_module is
    signal count : integer;
begin
    process (clk)
    begin
        if (rst = '0') then 
            count <= 0;
        elsif (rising_edge(clk)) then
            if (count < to_integer(unsigned(dutyCycle))) then
                outPulse <= '1';
            else
                outPulse <= '0';
            end if;
            count <= count + 1;
            if (count = 2**DUTY_CYCLE_IN_WIDTH - 1) then
                count <= 0;
            end if;
        end if;
    end process;

end arch;