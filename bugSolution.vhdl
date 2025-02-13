```vhdl
ENTITY my_entity IS
  PORT (
    clk : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE behavioral OF my_entity IS
  SIGNAL temp_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
  PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      temp_data <= data_in; 
      data_out <= temp_data; 
    END IF;
  END PROCESS;
END ARCHITECTURE;
```