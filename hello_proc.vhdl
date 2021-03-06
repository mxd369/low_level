-- hello_proc.vhdl  Just output to the screen
--                   This should be independent of whose VHDL you use
--                   When using some vendors GUI, you have a learning curve
--                   Using portable VHDL, it will run on all vendors
--                   with implementations conforming to IEEE Std. 1076-1993

entity hello_proc is  -- test bench (top level like "main")
end entity hello_proc;

library STD;
use STD.textio.all;                     -- basic I/O
library IEEE;
use IEEE.std_logic_1164.all;            -- basic logic types
use IEEE.std_logic_textio.all;          -- I/O for logic types

architecture test of hello_proc is -- where declarations are placed
  subtype word_32 is std_logic_vector(31 downto 0);
  signal four_32 : word_32 := x"00000004";    -- just four
  signal counter : integer := 1;              -- initialized counter
  alias swrite is write [line, string, side, width] ;

  procedure my_proc is
    variable my_line : line;  -- type 'line' comes from textio
  begin
    write(my_line, string'("Hello Proc"));  -- formatting
    writeline(output, my_line);              -- write to "output"
    swrite(my_line, "four_32 = ");     -- formatting with alias
    hwrite(my_line, four_32); -- format type std_logic_vector as hex
    swrite(my_line, "  counter= ");
    write(my_line, counter);  -- format 'counter' as integer
    swrite(my_line, " at time ");
    write(my_line, now);                     -- format time
    writeline(output, my_line);              -- write to display
  end procedure my_proc;
begin  -- where code is placed
  my_proc;
end architecture test;


-- compile/analyze this file, then simulate
-- the output on the screen should contain the following lines (without "-- ")

-- Hello Proc
-- four_32 = 00000004  counter= 1 at time 0 NS