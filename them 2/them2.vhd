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
end architecture Behavioral_Inverse_x;

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

  component XOR_GATE is
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

  signal a_inv, b_inv, and_out, or_out, xor_out, nand_out, nor_out : std_logic;
  signal add_sum, add_carry_out : std_logic;
begin
  U0: Inverse_x port map (X=>A , Y=> not A, Inv=> AInvert , Result=>a_inv);
  U1: Inverse_x port map (X=>B , Y=> not B, Inv=> BInvert , Result=>b_inv);
  -- Instantiate the AND gate
  U2: AND_GATE port map (A => a_inv, B => b_inv, Z => and_out);
 
  -- Instantiate the OR gate
  U3: OR_GATE port map (A => a_inv, B => b_inv, Z => or_out);
 
  -- Instantiate the XOR gate
  U4: XOR_GATE port map (A => a_inv, B => b_inv, Z => xor_out);
  -- Instantiate the full adder
  U5: FULL_ADDER port map (A => a_inv, B => b_inv, CarryIn => CarryIn, Sum => add_sum, CarryOut => add_carry_out);
 


  process(Operation)
  begin
    case Operation is
      when "00" =>
        Result <= and_out;
      when "01" =>
        Result <= or_out;
      when "11" =>
        Result <= xor_out;
      when "10" =>
        Result <= add_sum;
      when others =>
        Result <= '0';
    end case;
  end process;

  CarryOut <= add_carry_out;
end architecture;
library ieee;
use ieee.std_logic_1164.all;
entity ALU_Control is
    port (
        opcode : in std_logic_vector(2 downto 0);
        Ainvert, Binvert, CarryIn : out std_logic;
        Operation : out std_logic_vector(1 downto 0)
    );
end entity ALU_Control;

-- Here we have the Alu control each belonging to a separate case using the 1-Bit Alu
architecture behavioral of ALU_Control is
begin
    process (opcode)
    begin
        case opcode is
            when "000" => -- AND
                Ainvert <= '0';
                Binvert <= '0';
                CarryIn <= '0';
                Operation <= "00";
               
            when "001" => -- OR
                Ainvert <= '0';
                Binvert <= '0';
                CarryIn <= '0';
                Operation <= "01";
               
            when "010" => -- ADD
                Ainvert <= '0';
                Binvert <= '0';
                CarryIn <= '0';
                Operation <= "10";
               
            when "011" => -- SUB
                Ainvert <= '0';
                Binvert <= '1';
                CarryIn <= '1';
                Operation <= "10";
               
            when "100" => -- NOR
                Ainvert <= '1';
                Binvert <= '1';
                CarryIn <= '0';
                Operation <= "00";

            when "101" => -- NAND
                Ainvert <= '1';
                Binvert <= '1';
                CarryIn <= '0';
                Operation <= "01";
               
            when "110" => -- XOR
                Ainvert <= '0';
                Binvert <= '0';
                CarryIn <= '0';
                Operation <= "11";
               
when others => -- Invalid opcode
                Ainvert <= '0';
                Binvert <= '0';
                CarryIn <= '0';
                Operation <= "00";
        end case;
    end process;
end architecture behavioral;
library ieee;
use ieee.std_logic_1164.all;

------ Declaration of the main Entity
entity them2 is
    port(
        OPcode : in std_logic_vector(2 downto 0);
        a: in std_logic_vector(15 downto 0);
        b: in std_logic_vector(15 downto 0);
        result: out std_logic_vector(15 downto 0);
 overflow: out std_logic
     );
end entity them2;

-- Architecture of the main Entity

architecture behave of them2 is
    component them1 is
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
    end component;

    component ALU_Control is
        port (
            opcode : in std_logic_vector(2 downto 0);
            Ainvert, Binvert, CarryIn : out std_logic;
            Operation : out std_logic_vector(1 downto 0)
        );
    end component;

    signal oper: std_logic_vector(1 downto 0);
    signal ainv, binv, car: std_logic;
    signal slice_result, slice_carry: std_logic_vector(15 downto 0);

-- Here we have the 16 Bit-ALU sliced to 16 slices each connected to the following one.  

begin
    slice: ALU_Control port map(opcode => OPcode, Ainvert => ainv, Binvert => binv, CarryIn => car, Operation => oper);

    slice0: them1 port map (A => a(0), B => b(0), Ainvert => ainv, Binvert => binv, CarryIn => car,
                            Operation => oper, Result => slice_result(0), CarryOut => slice_carry(0));
    slice1: them1 port map (A => a(1), B => b(1), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(0),
                            Operation => oper, Result => slice_result(1), CarryOut => slice_carry(1));
    slice2: them1 port map (A => a(2), B => b(2), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(1),
                            Operation => oper, Result => slice_result(2), CarryOut => slice_carry(2));
    slice3: them1 port map (A => a(3), B => b(3), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(2),
                            Operation => oper, Result => slice_result(3), CarryOut => slice_carry(3));
    slice4: them1 port map (A => a(4), B => b(4), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(3),
                            Operation => oper, Result => slice_result(4), CarryOut => slice_carry(4));
    slice5: them1 port map (A => a(5), B => b(5), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(4),
                            Operation => oper, Result => slice_result(5), CarryOut => slice_carry(5));
    slice6: them1 port map (A => a(6), B => b(6), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(5),
                            Operation => oper, Result => slice_result(6), CarryOut => slice_carry(6));
    slice7: them1 port map (A => a(7), B => b(7), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(6),
                            Operation => oper, Result => slice_result(7), CarryOut => slice_carry(7));
    slice8: them1 port map (A => a(8), B => b(8), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(7),
                            Operation => oper, Result => slice_result(8), CarryOut => slice_carry(8));
    slice9: them1 port map (A => a(9), B => b(9), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(8),
                            Operation => oper, Result => slice_result(9), CarryOut => slice_carry(9));
    slice10: them1 port map (A => a(10), B => b(10), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(9),
                             Operation => oper, Result => slice_result(10), CarryOut => slice_carry(10));
    slice11: them1 port map (A => a(11), B => b(11), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(10),
                             Operation => oper, Result => slice_result(11), CarryOut => slice_carry(11));
    slice12: them1 port map (A => a(12), B => b(12), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(11),
                             Operation => oper, Result => slice_result(12), CarryOut => slice_carry(12));
    slice13: them1 port map (A => a(13), B => b(13), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(12),
                             Operation => oper, Result => slice_result(13), CarryOut => slice_carry(13));
    slice14: them1 port map (A => a(14), B => b(14), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(13),
                             Operation => oper, Result => slice_result(14), CarryOut => slice_carry(14));
    slice15: them1 port map (A => a(15), B => b(15), Ainvert => ainv, Binvert => binv, CarryIn => slice_carry(14),
                             Operation => oper, Result => slice_result(15), CarryOut => slice_carry(15));

									  
-- Overflow check for the arthemetic actions
process(opcode)
       begin
           case opcode is
             when "011" =>
               overflow <= slice_carry(14) xor slice_carry(15);
             when "010" =>
               overflow <= slice_carry(14) xor slice_carry(15);
             when others =>
               overflow <= '0';
           end case;
    end process;

    result <= slice_result;
end architecture behave;