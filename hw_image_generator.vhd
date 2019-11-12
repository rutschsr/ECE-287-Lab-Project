--------------------------------------------------------------------------------
--
--   FileName:         hw_image_generator.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 64-bit Version 12.1 Build 177 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 05/10/2013 Scott Larson
--     Initial Public Release
--    
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY hw_image_generator IS
	GENERIC(
		pixels_y1 :	INTEGER := 100;    --row that first object starts
		pixels_x1 :	INTEGER := 100;   --column that first object starts
		
		pixels_y2 :	INTEGER := 200;    -- row ending of first object
		pixels_x2 :	INTEGER := 200;	 --column ending of first object
		
		pixels_y3 :	INTEGER := 400;   -- start row of second object
		pixels_x3 :	INTEGER := 100;    -- start column of second object
		
		pixels_y4 :	INTEGER := 500;    --end row of second object
		pixels_x4 :	INTEGER := 200);     --end column of second object
		   
	PORT(
		disp_ena		:	IN		STD_LOGIC;	--display enable ('1' = display time, '0' = blanking time)
		row			:	IN		INTEGER;		--row pixel coordinate
		column		:	IN		INTEGER;		--column pixel coordinate
		red			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
		green			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
		blue			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
BEGIN
	PROCESS(disp_ena, row, column)
	BEGIN

		IF(disp_ena = '1') THEN		--display time
			IF(row > pixels_y1 AND column > pixels_x1 AND row < pixels_y2 AND column < pixels_x2) THEN
				red <= (OTHERS => '1');
				green	<= (OTHERS => '0');
				blue <= (OTHERS => '1');
			ELSE IF(row > pixels_y3 AND column > pixels_x3 AND row < pixels_y4 AND column < pixels_x4) THEN
				red <= (OTHERS => '0');
				green	<= (OTHERS => '1');
				blue <= (OTHERS => '0');
			ELSE
				red <= (OTHERS => '1');
				green	<= (OTHERS => '1');
				blue <= (OTHERS => '0');
			END IF;
			END IF;
		ELSE								--blanking time
			red <= (OTHERS => '0');
			green <= (OTHERS => '0');
			blue <= (OTHERS => '0');
		END IF;
	
	END PROCESS;
END behavior;