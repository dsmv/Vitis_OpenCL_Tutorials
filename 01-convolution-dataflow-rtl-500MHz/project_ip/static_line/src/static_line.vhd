----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2020 16:34:51
-- Design Name: 
-- Module Name: static_line - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity static_line is
    generic(
        WIDTH           : in integer:=2
    );
    port 
    (
            data_o      : out STD_LOGIC_VECTOR ( WIDTH-1 downto 0 );
            clk         : in std_logic; 
            data_i      : in STD_LOGIC_VECTOR ( WIDTH-1 downto 0 )
    );
end static_line;  

architecture Behavioral of static_line is

signal  static_data             : std_logic_vector( WIDTH-1 downto 0 );

attribute DONT_TOUCH            : string;
attribute DONT_TOUCH            of static_data : signal is "true";
attribute DONT_TOUCH            of xfd : label is "true";
begin

static_data <= data_i;
--data_o <= static_data;

xfd: data_o <= static_data after 1 ns when rising_edge( clk );


--x: for ii in 0 to WIDTH-1 generate

--attribute DONT_TOUCH            of xfd : label is "true";

--begin

--xfd:    fd port map( q=>data_o(ii), c=>clk, d=>static_data(ii) );

--end generate;
--data_o <= static_data;


end Behavioral;
