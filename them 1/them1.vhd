library ieee;
use ieee.std_logic_1164.all;

-- Define the component for the 1-bit AND gate
entity AND_GATE is
  port (
    A : in std_logic;
    B : in std_logic;
    Z : out std_logic
  );
end entity;

architecture Behavioral of AND_GATE is
begin
  Z <= A and B;
end architecture;
library ieee;
use ieee.std_logic_1164.all;
entity Inverse_x is
    port (
        X     : in  std_logic;
        Y     : in  std_logic;
        INV   : in  std_logic;
        Result: out std_logic
    );
end entity Inverse_x;

-- Here we define the inputs for the multiplexers (2 to 1) for the inverters
architecture Behavioral_Inverse_x of Inverse_x is
begin
    process(INV)
    begin
        case INV is
            when '0' =>
                Result <= X;
            when '1' =>
                Result <= Y;
            when others =>
                Result <= '0';
        end case;
    end process;
end architecture;

-- Define the component for the 1-bit OR gate
library ieee;
use ieee.std_logic_1164.all;

entity OR_GATE is
  port (
    A : in std_logic;
    B : in std_logic;
    Z : out std_logic
  );
end entity;

architecture Behavioral of OR_GATE is
begin
  Z <= A or B;
end architecture;

-- Define the component for the 1-bit full adder
library ieee;
use ieee.std_logic_1164.all;

entity FULL_ADDER is
  port (
    A : in std_logic;
    B : in std_logic;
    CarryIn : in std_logic;
    Sum : out std_logic;
    CarryOut : out std_logic
  );
end entity;

architecture Behavioral of FULL_ADDER is
begin
  Sum <= A xor B xor CarryIn;
  CarryOut <= (A and B) or (CarryIn and (A xor B));
end architecture;
-- Define the component for the 1-bit XOR gate

library ieee;
use ieee.std_logic_1164.all;

entity XOR_GATE is
  port (
    A : in std_logic;
    B : in std_logic;
    Z : out std_logic
  );
end entity;

architecture Behavioral of XOR_GATE is
begin
  Z <= A xor B;
end architecture;



-- Main entity declaration for the 1-bit ALU slice
library ieee;
use ieee.std_logic_1164.all;

entity them1 is
  port (
    A : in std_logic;
    B : in std_logic;
    Ainvert : in std_logic;
    Binvert : in std_logic;
    CarryIn : in std_logic;
    Operation : in std_logic_vector(1 downto 0);
    Result : out std_logic;
    CarryOut : out std_logic
  );
end entity;

-- Architecture for the 1-bit ALU slice
architecture Structural of them1 is
    component Inverse_x is
        port (
            X     : in  std_logic;
            Y     : in  std_logic;
            INV   : in  std_logic;
            Result: out std_logic
        );
    end component;

  component AND_GATE is
    port (
      A : in std_logic;
      B : in std_logic;
      Z : out std_logic
    );
  end component;

  component OR_GATE is
    port (
      A : in std_logic;
      B : in std_logic;
      Z : out std_logic
    );
  end component;

  component FULL_ADDER is
    port (
      A : in std_logic;
      B : in std_logic;
      CarryIn : in std_logic;
      Sum : out std_logic;
      CarryOut : out std_logic
    );
  end component;
  
  component XOR_GATE is
    port (
      A : in std_logic;
      B : in std_logic;
      Z : out std_logic
    );
  end component;

  

  signal a_inv, b_inv, and_out, or_out, xor_out, nand_out, nor_out : std_logic;
  signal add_sum, add_carry_out : std_logic;
begin
  -- Instantiate the Ainvert,Binvert multiplexers
  U0: Inverse_x port map (X=>A , Y=> not A, Inv=> AInvert , Result=>a_inv);
  U1: Inverse_x port map (X=>B , Y=> not B, Inv=> BInvert , Result=>b_inv);
  -- Instantiate the AND gate
  U2: AND_GATE port map (A => a_inv, B => b_inv, Z => and_out);
 
  -- Instantiate the OR gate
  U3: OR_GATE port map (A => a_inv, B => b_inv, Z => or_out);
 
  
  -- Instantiate the full adder
  U4: FULL_ADDER port map (A => a_inv, B => b_inv, CarryIn => CarryIn, Sum => add_sum, CarryOut => add_carry_out);
  -- Instantiate the XOR gate
  U5: XOR_GATE port map (A => a_inv, B => b_inv, Z => xor_out);
 


  -- Based on the case get the proper output from the (4 to 1) multiplexer
  process(Operation)
  begin
    case Operation is
      when "00" =>
        Result <= and_out;
      when "01" =>
        Result <= or_out;
      when "10" =>
        Result <= add_sum;
      when "11" =>
        Result <= xor_out;
      when others =>
        Result <= '0';
    end case;
  end process;

  CarryOut <= add_carry_out;
end architecture;
