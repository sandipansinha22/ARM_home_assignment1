     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY

__main  FUNCTION
      MOV R4,#50;  a=50
	  MOV R5,#150; b=150
	  MOV R6,#100; c=100

case1 CMP R4,R5; compare a & b
      BLE case2; if(a<b) branch to label:case2
	  CMP R4,R5; compare a & c
	  BLE case3; if(a<c) branch to label:case3
	  MOV R1,R4; move largest value to R1 (in this case value of 'a')
	  B stop;    branch to stop

case2 CMP R5,R6; compare b & c
      BLE case3; if(a<c) branch to label:case3
	  MOV R1,R5; move largest value to R1 (in this case value of 'b')
	  B stop;    branch to stop

case3 MOV R1,R6; move largest value to R1 (in this case value of 'c')
      B stop;    branch to stop

stop  B stop;    stop program

     ENDFUNC
     END
