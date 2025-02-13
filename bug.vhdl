```vhdl
ENTITY my_entity IS
  PORT (
    clk : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE behavioral OF my_entity IS

BEGIN
  PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      data_out <= data_in; -- This is a potential problem if data_in changes after rising_edge(clk)
    END IF;
  END PROCESS;
END ARCHITECTURE;
```