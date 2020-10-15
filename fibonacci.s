     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY
__main  FUNCTION
      MOV R1,#0;    move 0 (first value) to R1
	  MOV R2,#1;    move 1 (second value) to R2
	  ADD R3,R1,R2; add the two values and store it in R3
	  MOV R5,#100;  specify the upper limit to the series

loopa CMP R3,R5;    compare the new value to the series with the upper limit
      BLE loopb;    if R3<R5 then branch to label:loopb
	  B stop;       branch to stop

loopb MOV R2,R3;    move value of R3 to R2
      MOV R1,R2;    move value of R2 to R1
	  ADD R3,R1,R2; add the two values and store it in R3
	  B loopa;      branch to label:loopa

stop  B stop;       stop program

     ENDFUNC
     END
