LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;

LIBRARY work;

ENTITY g58_stack52_test_init IS 
	
END g58_stack52_test_init;

ARCHITECTURE g58_stack52_test_init_arch OF g58_stack52_test_init IS 

SIGNAL enable : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL addr : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL data : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL mode : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL empty : STD_LOGIC;
SIGNAL full : STD_LOGIC;
SIGNAL num : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL value : STD_LOGIC_VECTOR(5 DOWNTO 0)

COMPONENT g58_stack52
	PORT(enable : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 addr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 mode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 empty : OUT STD_LOGIC;
		 full : OUT STD_LOGIC;
		 num : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 value : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;



BEGIN 



b2v_inst : g58_stack52
PORT MAP(enable => enable,
		 rst => rst,
		 clk => clk,
		 addr => addr,
		 data => data,
		 mode => mode,
		 empty => empty,
		 full => full,
		 num => num,
		 value => value);




generate_test : PROCESS

BEGIN

mode <= "01";
WAIT FOR 10 ns;

FOR i IN 0 to 63 LOOP -- loop over all A values
	addr <= STD_LOGIC_VECTOR(to_unsigned(i,6));
	WAIT FOR 10 ns; -- suspend process for 10 nanoseconds at the start of each loop


END LOOP;

WAIT; -- we have gone through all possible input patterns, so suspend simulator forever

END PROCESS generate_test;


END g58_stack52_test_init_arch;