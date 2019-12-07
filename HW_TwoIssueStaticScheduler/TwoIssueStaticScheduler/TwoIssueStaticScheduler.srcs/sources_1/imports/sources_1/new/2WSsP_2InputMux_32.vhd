----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2019 05:32:59 PM
-- Design Name: 
-- Module Name: 2WSsP_2InputMux_32 - Behavioral
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

entity WSsP_2InputMux_32 is
  Port (    
            i1, i2 : std_logic_vector(31 downto 0);
            iSel : in std_logic;
            iOut : out std_logic_vector(31 downto 0)
        );
end WSsP_2InputMux_32;

architecture Behavioral of WSsP_2InputMux_32 is

begin

    with iSel select iOut <= 
        i1 when '0',
        i2 when '1',
        x"00000000" when others;
end Behavioral;
