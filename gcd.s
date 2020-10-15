     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 

__main  FUNCTION
      MOV R1,#81; a=81
	  MOV R2,#18; b=18
	  
loop  CMP R1,R2; while loop 
      BLT case1; if(a<b) branch to label:case1
	  BGT case2; if(a>b) branch to label:case2
	  B stop;    if(a=b) branch to stop
	  
case1 SUB R2,R1; b-a 
      B loop;    branch to label:loop
	  
case2 SUB R1,R2; a-b
      B loop;    branch to label:loop
	  
stop  B stop;    stop program
	  
     ENDFUNC
     END
