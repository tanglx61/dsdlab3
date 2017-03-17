LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

Library work;

ENTITY g58_mod13_test IS 
END g58_mod13_test;

ARCHITECTURE g58_mod13_test_arch OF g58_mod13_test IS 

SIGNAL X : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL floor13 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL mod13 : STD_LOGIC_VECTOR(3 DOWNTO 0);

COMPONENT g58_mod13
	PORT
	(	
		X :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		mod13 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		floor13: OUt STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

BEGIN 

inst1 : g58_mod13
PORT MAP(
		 X => X,
		 mod13 => mod13,
		 floor13 => floor13
		 );


generate_test : PROCESS

BEGIN

FOR i IN 0 to 63 LOOP -- loop over all A values
	X <= std_logic_vector(to_unsigned(i, 6));
	WAIT FOR 10 ns; -- suspend process for 10 nanoseconds at the start of each loop

END LOOP;

--seed <= "00000001100101010000000011110011";

--WAIT FOR 10 ns; -- suspend process for 10 nanoseconds at the start of each loop

WAIT; -- we have gone through all possible input patterns, so suspend simulator forever

END PROCESS generate_test;

END g58_mod13_test_arch;