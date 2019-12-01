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
USE ieee.std_logic_unsigned.all;
USE IEEE.STD_LOGIC_ARITH.all;

ENTITY hw_image_generator IS
	
		   
	PORT(
		CLK_50MHz	:	IN		STD_LOGIC;
		KEY3			:	IN		STD_LOGIC;
		KEY2			:	IN		STD_LOGIC;
		KEY1			:	IN		STD_LOGIC;
		KEY0			:	IN		STD_LOGIC;
		disp_ena		:	IN		STD_LOGIC;	--display enable ('1' = display time, '0' = blanking time)
		row			:	IN		INTEGER;		--row pixel coordinate
		column		:	IN		INTEGER;		--column pixel coordinate
		red			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
		green			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
		blue			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0'); --blue magnitude output to DAC
		LED			:	OUT	STD_LOGIC;
		LED0			:	OUT	STD_LOGIC;
		LED1			:	OUT	STD_LOGIC;
		LED2			:	OUT	STD_LOGIC);
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
 signal gy1			 : INTEGER :=0;					-- Left / Right startingcoordinate of moving gamepiece
 signal gx1 		 : INTEGER :=25;					-- Up / Down starting coordinate of moving gamepiece
 
 signal gy2 		 : INTEGER :=25;					-- Left / Right Second starting coordinate of moving gamepiece
 signal gx2			 : INTEGER :=50;					-- Up / Down Second starting coordinate of moving gamepiece
 
 signal wy1			 : INTEGER :=0;					--Game Bar (Top of screen) coordinates
 signal wx1			 : INTEGER :=0;
 signal wy2			 : INTEGER :=1023;
 signal wx2 		 : INTEGER :=15;
 
 signal wy3			 : INTEGER :=50;				--V1
 signal wx3			 : INTEGER :=15;
 signal wy4			 : INTEGER :=75;
 signal wx4 		 : INTEGER :=150;
 
 signal wy5			 : INTEGER :=0;				--H1
 signal wx5			 : INTEGER :=210;
 signal wy6			 : INTEGER :=125;
 signal wx6 		 : INTEGER :=235;
 
 signal wy7			 : INTEGER :=175;				--V2
 signal wx7			 : INTEGER :=15;
 signal wy8			 : INTEGER :=200;
 signal wx8 		 : INTEGER :=300;
 
 signal wy9			 : INTEGER :=75;				--V3
 signal wx9			 : INTEGER :=285;
 signal wy10		 : INTEGER :=100;
 signal wx10 		 : INTEGER :=700;
 
 signal wy11			 : INTEGER :=0;				--H2
 signal wx11			 : INTEGER :=585;
 signal wy12			 : INTEGER :=100;
 signal wx12   		 : INTEGER :=610;
 
 signal wy13			 : INTEGER :=100;				--V3
 signal wx13			 : INTEGER :=550;
 signal wy14			 : INTEGER :=150;
 signal wx14   		 : INTEGER :=575;
 
 signal wy15			 : INTEGER :=200;				--V4
 signal wx15			 : INTEGER :=575;
 signal wy16			 : INTEGER :=225;
 signal wx16   		 : INTEGER :=768;
 
 signal wy17			 : INTEGER :=175;				--H4
 signal wx17			 : INTEGER :=400;
 signal wy18			 : INTEGER :=575;
 signal wx18   		 : INTEGER :=425;
 
 signal wy19			 : INTEGER :=575;				--H5
 signal wx19			 : INTEGER :=375;
 signal wy20			 : INTEGER :=974;
 signal wx20   		 : INTEGER :=400;
 
 signal wy21			 : INTEGER :=250;				--V5
 signal wx21			 : INTEGER :=100;
 signal wy22			 : INTEGER :=275;
 signal wx22   		 : INTEGER :=400;
 
 signal wy23			 : INTEGER :=350;				--V6
 signal wx23			 : INTEGER :=15;
 signal wy24			 : INTEGER :=375;
 signal wx24   		 : INTEGER :=125;
 
 signal wy25			 : INTEGER :=550;				--V7
 signal wx25			 : INTEGER :=75;
 signal wy26			 : INTEGER :=575;
 signal wx26   		 : INTEGER :=400;
 
 signal wy27			 : INTEGER :=400;				--H10
 signal wx27			 : INTEGER :=185;
 signal wy28			 : INTEGER :=550;
 signal wx28   		 : INTEGER :=210;
 
 signal wy29			 : INTEGER :=650;				--V8
 signal wx29			 : INTEGER :=15;
 signal wy30			 : INTEGER :=675;
 signal wx30   		 : INTEGER :=275;
 
 signal wy31			 : INTEGER :=450;				--V16
 signal wx31			 : INTEGER :=250;
 signal wy32			 : INTEGER :=475;
 signal wx32   		 : INTEGER :=400;
 
 signal wy33			 : INTEGER :=740;				--V9
 signal wx33			 : INTEGER :=65;
 signal wy34			 : INTEGER :=765;
 signal wx34   		 : INTEGER :=325;
 
 signal wy35			 : INTEGER :=740;				--H6
 signal wx35			 : INTEGER :=300;
 signal wy36			 : INTEGER :=1024;
 signal wx36   		 : INTEGER :=325;
 
 signal wy37			 : INTEGER :=740;				--H11
 signal wx37			 : INTEGER :=65;
 signal wy38			 : INTEGER :=949;
 signal wx38   		 : INTEGER :=90;
 
 signal wy39			 : INTEGER :=924;				--V17
 signal wx39			 : INTEGER :=65;
 signal wy40			 : INTEGER :=949;
 signal wx40   		 : INTEGER :=225;
 
 signal wy41			 : INTEGER :=815;				--H12
 signal wx41			 : INTEGER :=200;
 signal wy42			 : INTEGER :=949;
 signal wx42   		 : INTEGER :=225;
 
 signal wy43			 : INTEGER :=375;				--V10
 signal wx43			 : INTEGER :=400;
 signal wy44			 : INTEGER :=400;
 signal wx44   		 : INTEGER :=625;
 
 signal wy45			 : INTEGER :=460;				--V11
 signal wx45			 : INTEGER :=575;
 signal wy46			 : INTEGER :=485;
 signal wx46   		 : INTEGER :=768;
 
 signal wy47			 : INTEGER :=500;				--H7
 signal wx47			 : INTEGER :=500;
 signal wy48			 : INTEGER :=700;
 signal wx48   		 : INTEGER :=525;
 
 signal wy49			 : INTEGER :=675;				--V12
 signal wx49			 : INTEGER :=525;
 signal wy50			 : INTEGER :=700;
 signal wx50   		 : INTEGER :=768;
 
 signal wy51			 : INTEGER :=625;				--V13
 signal wx51			 : INTEGER :=400;
 signal wy52			 : INTEGER :=650;
 signal wx52   		 : INTEGER :=450;
 
 signal wy53			 : INTEGER :=800;				--V14
 signal wx53			 : INTEGER :=400;
 signal wy54			 : INTEGER :=825;
 signal wx54   		 : INTEGER :=525;
 
 signal wy55			 : INTEGER :=825;				--H18
 signal wx55			 : INTEGER :=500;
 signal wy56			 : INTEGER :=900;
 signal wx56   		 : INTEGER :=525;
 
 signal wy57			 : INTEGER :=825;				--H9
 signal wx57			 : INTEGER :=693;
 signal wy58			 : INTEGER :=1024;
 signal wx58   		 : INTEGER :=718;
 
 signal wy59			 : INTEGER :=750;				--V15
 signal wx59			 : INTEGER :=718;
 signal wy60			 : INTEGER :=775;
 signal wx60   		 : INTEGER :=768;
 
 signal wy61			 : INTEGER :=974;				--WIN SQUARE
 signal wx61			 : INTEGER :=718;
 signal wy62			 : INTEGER :=1024;
 signal wx62   		 : INTEGER :=768;
 
 Signal B1x				 : INTEGER :=264;
 Signal B1y				 : INTEGER :=152;
 
 Signal B2x				 : INTEGER :=324;
 Signal B2y				 : INTEGER :=182;
 
 Signal B3x				 : INTEGER :=384;
 Signal B3y				 : INTEGER :=212;
 
 Signal B4x				 : INTEGER :=444;
 Signal B4y				 : INTEGER :=242;
 
 Signal B5x				 : INTEGER :=384;
 Signal B5y				 : INTEGER :=272;
 
 Signal B6x				 : INTEGER :=324;
 Signal B6y				 : INTEGER :=302;
 
 Signal B7x				 : INTEGER :=384;
 Signal B7y				 : INTEGER :=332;
 
 Signal B8x				 : INTEGER :=444;
 Signal B8y				 : INTEGER :=362;
 
 Signal B9x				 : INTEGER :=384;
 Signal B9y				 : INTEGER :=392;
 
 Signal B10x				 : INTEGER :=324;
 Signal B10y				 : INTEGER :=422;
 
 Signal B11x				 : INTEGER :=264;
 Signal B11y				 : INTEGER :=452;
 
 Signal B12x				 : INTEGER :=444;
 Signal B12y				 : INTEGER :=542;
 
 Signal B13x				 : INTEGER :=264;
 Signal B13y				 : INTEGER :=542;
 
 Signal B14x				 : INTEGER :=444;
 Signal B14y				 : INTEGER :=572;
 
 Signal B15x				 : INTEGER :=384;
 Signal B15y				 : INTEGER :=572;
 
 Signal B16x				 : INTEGER :=324;
 Signal B16y				 : INTEGER :=572;
 
 Signal B17x				 : INTEGER :=264;
 Signal B17y				 : INTEGER :=572;
 
 Signal B18x				 : INTEGER :=444;
 Signal B18y				 : INTEGER :=602;
 
 Signal B19x				 : INTEGER :=264;
 Signal B19y				 : INTEGER :=602;
 
 Signal B20x				 : INTEGER :=444;
 Signal B20y				 : INTEGER :=692;
 
 Signal B21x				 : INTEGER :=384;
 Signal B21y				 : INTEGER :=692;
 
 Signal B22x				 : INTEGER :=324;
 Signal B22y				 : INTEGER :=692;
 
 Signal B23x				 : INTEGER :=264;
 Signal B23y				 : INTEGER :=692;
 
 Signal B24x				 : INTEGER :=264;
 Signal B24y				 : INTEGER :=722;
 
 Signal B25x				 : INTEGER :=324;
 Signal B25y				 : INTEGER :=752;
 
 Signal B26x				 : INTEGER :=384;
 Signal B26y				 : INTEGER :=782;
 
 Signal B27x				 : INTEGER :=444;
 Signal B27y				 : INTEGER :=812;
 
 Signal B28x				 : INTEGER :=444;
 Signal B28y				 : INTEGER :=842;
 
 Signal B29x				 : INTEGER :=384;
 Signal B29y				 : INTEGER :=842;
 
 Signal B30x				 : INTEGER :=324;
 Signal B30y				 : INTEGER :=842;
 
 Signal B31x				 : INTEGER :=264;
 Signal B31y				 : INTEGER :=842;
 
  
 signal win			:STD_LOGIC :='0';
 
 signal multiplier: INTEGER :=1; 						--Multiplier to make game harder for more levels

 signal counter1	: STD_LOGIC_VECTOR(24 DOWNTO 0); --clock counter vector
 
 
BEGIN


 process(CLK_50MHz)
 

 
	BEGIN


     if CLK_50MHz'event and CLK_50MHz = '1' then  -- rising clock edge
	 
	 
--1011111010111100001000000    counter value for 1HZ
--0100110001001011010100000	 counter value for 10 Hz
--0000000111101000010010000    Counter Value for 100 Hz
--0000000010111100001000000	 counter value for 

	 
		
         if counter1 < "0000000111101000010010000" then
		
			counter1 <= counter1+1;

            
        else
				counter1 <= (others => '0');
					
					IF(KEY0='0'AND gx2 < 768) THEN						--down movement, AND value to keep on page, resolution is 1024x768	
						gx1 <= gx1+1*multiplier;
						gx2 <= gx2+1*multiplier;					
					END IF;	
					
					IF(KEY1='0' AND gx1 > 0) THEN						--up movement
						gx1 <= gx1-1*multiplier;		
						gx2 <= gx2-1*multiplier;
					END IF;
					
					IF(KEY2='0' AND gy2 < 1024) THEN						--left movement
						gy2 <= gy2+1*multiplier;
						gy1 <= gy1+1*multiplier;
					END IF;
					
					IF(KEY3='0'AND gy1 > 0) THEN						--right movement
						gy2 <= gy2-1*multiplier;
						gy1 <= gy1-1*multiplier;
					END IF;
			
				
				
				
				--Game logic
				
				IF(gx1 < wx2 OR 										--Game Bar								
				-- GOING IN ORDER LIKE AN INTELEGENT PERSON WROTE THIS CODE!!
				((gy2 > wy3 AND gy1 < wY4) AND (gx2 > wx3 AND gx1 < wx4)) OR 
				((gy2 > wy5 AND gy1 < wy6) AND (gx2 > wx5 AND gx1 < wx6)) OR	
				((gy2 > wy7 AND gy1 < wy8) AND (gx2 > wx7 AND gx1 < wx8)) OR  
				((gy2 > wy9 AND gy1 < wy10) AND (gx2 > wx9 AND gx1 < wx10)) OR
				((gy2 > wy11 AND gy1 < wy12) AND (gx2 > wx11 AND gx1 < wx12)) OR  
				((gy2 > wy13 AND gy1 < wy14) AND (gx2 > wx13 AND gx1 < wx14)) OR  
				((gy2 > wy15 AND gy1 < wy16) AND (gx2 > wx15 AND gx1 < wx16)) OR  
				((gy2 > wy17 AND gy1 < wy18) AND (gx2 > wx17 AND gx1 < wx18)) OR  
				((gy2 > wy19 AND gy1 < wy20) AND (gx2 > wx19 AND gx1 < wx20)) OR  
				((gy2 > wy21 AND gy1 < wy22) AND (gx2 > wx21 AND gx1 < wx22)) OR  
				((gy2 > wy23 AND gy1 < wy24) AND (gx2 > wx23 AND gx1 < wx24)) OR 
				((gy2 > wy25 AND gy1 < wy26) AND (gx2 > wx25 AND gx1 < wx26)) OR
				((gy2 > wy27 AND gy1 < wy28) AND (gx2 > wx27 AND gx1 < wx28)) OR
				((gy2 > wy29 AND gy1 < wy30) AND (gx2 > wx29 AND gx1 < wx30)) OR
				((gy2 > wy31 AND gy1 < wy32) AND (gx2 > wx31 AND gx1 < wx32)) OR
				((gy2 > wy33 AND gy1 < wy34) AND (gx2 > wx33 AND gx1 < wx34)) OR
				((gy2 > wy35 AND gy1 < wy36) AND (gx2 > wx35 AND gx1 < wx36)) OR
				((gy2 > wy37 AND gy1 < wy38) AND (gx2 > wx37 AND gx1 < wx38)) OR
				((gy2 > wy39 AND gy1 < wy40) AND (gx2 > wx39 AND gx1 < wx40)) OR
				((gy2 > wy41 AND gy1 < wy42) AND (gx2 > wx41 AND gx1 < wx42)) OR
				((gy2 > wy43 AND gy1 < wy44) AND (gx2 > wx43 AND gx1 < wx44)) OR
				((gy2 > wy45 AND gy1 < wy46) AND (gx2 > wx45 AND gx1 < wx46)) OR
				((gy2 > wy47 AND gy1 < wy48) AND (gx2 > wx47 AND gx1 < wx48)) OR
				((gy2 > wy49 AND gy1 < wy50) AND (gx2 > wx49 AND gx1 < wx50)) OR
				((gy2 > wy51 AND gy1 < wy52) AND (gx2 > wx51 AND gx1 < wx52)) OR
				((gy2 > wy53 AND gy1 < wy54) AND (gx2 > wx53 AND gx1 < wx54)) OR
				((gy2 > wy55 AND gy1 < wy56) AND (gx2 > wx55 AND gx1 < wx56)) OR
				((gy2 > wy57 AND gy1 < wy58) AND (gx2 > wx57 AND gx1 < wx58)) OR
				((gy2 > wy59 AND gy1 < wy60) AND (gx2 > wx59 AND gx1 < wx50))
				
				) THEN
					gy1 <=0;					
					gx1 <=25;					
					gy2 <=25;					
					gx2 <=50;					
					
				END IF;
			IF(gy1>974 AND gx1 > 718) THEN
				win <= '1';
				END IF;
			IF(gy1 <974 AND gx1< 718 AND win = '1')THEN
				win <='0';
				gy1 <=0;					
				gx1 <=25;			
				gy2 <=25;					
				gx2 <=50;	
				END IF;
			
				END IF;
				END IF;
				

				
   end process;



	PROCESS(disp_ena, row, column, win)
		
			BEGIN	
					
				IF(disp_ena = '1') THEN		--display time
					IF(WIN='1') THEN
						IF((row > B1y AND column > B1X AND row < (B1Y+30) AND column < (B1x+60)) OR
							(row > B2y AND column > B2X AND row < (B2Y+30) AND column < (B2x+60)) OR
							(row > B3y AND column > B3X AND row < (B3Y+30) AND column < (B3x+60)) OR
							(row > B4y AND column > B4X AND row < (B4Y+30) AND column < (B4x+60)) OR
							(row > B5y AND column > B5X AND row < (B5Y+30) AND column < (B5x+60)) OR
							(row > B6y AND column > B6X AND row < (B6Y+30) AND column < (B6x+60)) OR
							(row > B7y AND column > B7X AND row < (B7Y+30) AND column < (B7x+60)) OR
							(row > B8y AND column > B8X AND row < (B8Y+30) AND column < (B8x+60)) OR
							(row > B9y AND column > B9X AND row < (B9Y+30) AND column < (B9x+60)) OR
							(row > B10y AND column > B10X AND row < (B10Y+30) AND column < (B10x+60)) OR
							(row > B11y AND column > B11X AND row < (B11Y+30) AND column < (B11x+60)) OR
							(row > B12y AND column > B12X AND row < (B12Y+30) AND column < (B12x+60)) OR
							(row > B13y AND column > B13X AND row < (B13Y+30) AND column < (B13x+60)) OR
							(row > B14y AND column > B14X AND row < (B14Y+30) AND column < (B14x+60)) OR
							(row > B15y AND column > B15X AND row < (B15Y+30) AND column < (B15x+60)) OR
							(row > B16y AND column > B16X AND row < (B16Y+30) AND column < (B16x+60)) OR
							(row > B17y AND column > B17X AND row < (B17Y+30) AND column < (B17x+60)) OR
							(row > B18y AND column > B18X AND row < (B18Y+30) AND column < (B18x+60)) OR
							(row > B19y AND column > B19X AND row < (B19Y+30) AND column < (B19x+60)) OR
							(row > B20y AND column > B20X AND row < (B20Y+30) AND column < (B20x+60)) OR
							(row > B21y AND column > B21X AND row < (B21Y+30) AND column < (B21x+60)) OR
							(row > B22y AND column > B22X AND row < (B22Y+30) AND column < (B22x+60)) OR
							(row > B23y AND column > B23X AND row < (B23Y+30) AND column < (B23x+60)) OR
							(row > B24y AND column > B24X AND row < (B24Y+30) AND column < (B24x+60)) OR
							(row > B25y AND column > B25X AND row < (B25Y+30) AND column < (B25x+60)) OR
							(row > B26y AND column > B26X AND row < (B26Y+30) AND column < (B26x+60)) OR
							(row > B27y AND column > B27X AND row < (B27Y+30) AND column < (B27x+60)) OR
							(row > B28y AND column > B28X AND row < (B28Y+30) AND column < (B28x+60)) OR
							(row > B29y AND column > B29X AND row < (B29Y+30) AND column < (B29x+60)) OR
							(row > B30y AND column > B30X AND row < (B30Y+30) AND column < (B30x+60)) OR
							(row > B31y AND column > B31X AND row < (B31Y+30) AND column < (B31x+60))
							) THEN --WIN SCREEN
							red <= (OTHERS => '0');
							green	<= (OTHERS => '0');
							blue <= (OTHERS => '1');
						ELSE -- BACKGROUND
							red <= (OTHERS => '1');
						   green	<= (OTHERS => '1');
						   blue <= (OTHERS => '0');
						END IF;	
				ELSE
					IF(row > gy1 AND column > gx1 AND row < gy2 AND column < gx2) THEN --MOVING GAME PIECE
						red <= (OTHERS => '1');
						green	<= (OTHERS => '0');
						blue <= (OTHERS => '1');
					ELSIF(row > wy1 AND column > wx1 AND row < wy2 AND column < wx2) THEN --first maze piece statement, entire top of screen
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy3 AND column > wx3 AND row < wy4 AND column < wx4) THEN --V1
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy5 AND column > wx5 AND row < wy6 AND column < wx6) THEN --H1
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy7 AND column > wx7 AND row < wy8 AND column < wx8) THEN --V2
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy9 AND column > wx9 AND row < wy10 AND column < wx10) THEN --V3
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy11 AND column > wx11 AND row < wy12 AND column < wx12) THEN --H2
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy13 AND column > wx13 AND row < wy14 AND column < wx14) THEN --H3
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');	
					ELSIF(row > wy15 AND column > wx15 AND row < wy16 AND column < wx16) THEN -- V4
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');	
					ELSIF(row > wy17 AND column > wx17 AND row < wy18 AND column < wx18) THEN -- H4
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');	
					ELSIF(row > wy19 AND column > wx19 AND row < wy20 AND column < wx20) THEN -- H5
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');	
					ELSIF(row > wy21 AND column > wx21 AND row < wy22 AND column < wx22) THEN -- V5
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');	
					ELSIF(row > wy23 AND column > wx23 AND row < wy24 AND column < wx24) THEN -- V6
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy25 AND column > wx25 AND row < wy26 AND column < wx26) THEN -- V7
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy27 AND column > wx27 AND row < wy28 AND column < wx28) THEN -- H10
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy29 AND column > wx29 AND row < wy30 AND column < wx30) THEN -- V8
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy31 AND column > wx31 AND row < wy32 AND column < wx32) THEN -- V16
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');		
					ELSIF(row > wy33 AND column > wx33 AND row < wy34 AND column < wx34) THEN -- V9
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy35 AND column > wx35 AND row < wy36 AND column < wx36) THEN -- H6
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy37 AND column > wx37 AND row < wy38 AND column < wx38) THEN -- h11
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy39 AND column > wx39 AND row < wy40 AND column < wx40) THEN -- V17
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy41 AND column > wx41 AND row < wy42 AND column < wx42) THEN -- H12
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy43 AND column > wx43 AND row < wy44 AND column < wx44) THEN -- V10
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy45 AND column > wx45 AND row < wy46 AND column < wx46) THEN -- V11
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');				
					ELSIF(row > wy47 AND column > wx47 AND row < wy48 AND column < wx48) THEN -- H7
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');	
					ELSIF(row > wy49 AND column > wx49 AND row < wy50 AND column < wx50) THEN -- V12
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy51 AND column > wx51 AND row < wy52 AND column < wx52) THEN -- V13
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy53 AND column > wx53 AND row < wy54 AND column < wx54) THEN -- V14
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');	
					ELSIF(row > wy55 AND column > wx55 AND row < wy56 AND column < wx56) THEN -- H18
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');	
					ELSIF(row > wy57 AND column > wx57 AND row < wy58 AND column < wx58) THEN -- H9
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy59 AND column > wx59 AND row < wy60 AND column < wx60) THEN -- V15
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '0');
					ELSIF(row > wy61 AND column > wx61 AND row < wy62 AND column < wx62) THEN -- WIN BOX
						red <= (OTHERS => '0');
						green	<= (OTHERS => '1');
						blue <= (OTHERS => '1');	
					
					
					ELSE															--background
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
