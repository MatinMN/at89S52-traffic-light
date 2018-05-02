; Matin MN
ORG 00H
AJMP MAIN
MAIN: 	MOV TMOD,#10H   ;TIMER 0 IN 16-BIT MODE
	MOV A,#0FFH
	
; 65ms
; pin 0 for traffic 1
; pin 1 for traffic 2
; pin 2 for traffic 3
; pin 3 for traffic 4

STATE1: MOV R3,#100d
	ACALL T0S1
	acall t1s3
	acall t2s3
	acall t3s3
	ACALL DEL

STATE2: MOV R3,#100d
	ACALL T0S2
	acall t1s4
	acall t2s3
	acall t3s3
	ACALL DEL

STATE3: MOV R3,#100d ; traffic light 2 is green rest are red
	ACALL T0S3
	acall t1s1
	acall t2s3
	acall t3s3
	ACALL DEL

STATE4: MOV R3,#100d
	ACALL T0S3
	acall t1s2
	acall t2s4
	acall t3s3
	ACALL DEL
	
STATE5: MOV R3,#100d ; traffic light 3 is green
	ACALL T0S3
	acall t1s3
	acall t2s1
	acall t3s3
	ACALL DEL
	
STATE6: MOV R3,#100d ; 
	ACALL T0S3
	acall t1s3
	acall t2s2
	acall t3s4
	ACALL DEL
	
STATE7: MOV R3,#100d ; traffic light 4 is green
	ACALL T0S3
	acall t1s3
	acall t2s3
	acall t2s1
	ACALL DEL

STATE8: MOV R3,#100d ; 
	ACALL T0S4
	acall t1s3
	acall t2s3
	acall t2s2
	ACALL DEL
	AJMP STATE1
DEL:	; this is a delay
AA:	MOV TL1,#00H
	MOV TH1,#00H
        SETB TR1

DELAY1:	JNB TF1,DELAY1
	CLR TR1
	CLR TF1
	DJNZ R3,AA
	RET

T0S1: ;state one green is on 
  setb P0.0 ; green
  clr p0.1 ; yellow
  clr p0.2 ; red 
  RET

T0S2:
  setb P0.0
  setb p0.1
  clr p0.2
  RET
T0S3:
  clr P0.0
  clr p0.1
  setb p0.2
  RET

T0S4: ; only yellow is on
  clr P0.0
  setb p0.1
  clr p0.2
  RET

 ; trafic light 2 
 T1S1:
  setb P1.0
  clr p1.1
  clr p1.2
  RET

T1S2:
  setb P1.0
  setb p1.1
  clr p1.2
  RET
T1S3:
  clr P1.0
  clr p1.1
  setb p1.2
  RET

 T1S4: ; only yellow is on
  clr P1.0
  setb p1.1
  clr p1.2
  RET 
 ;; trafic light 3


T2S1:
  setb P2.0
  clr p2.1
  clr p2.2
  RET

T2S2:
  setb P2.0
  setb p2.1
  clr p2.2
  RET
T2S3:
  clr P2.0
  clr p2.1
  setb p2.2
  RET
T2S4: ; only yellow is on
  clr P2.0
  setb p2.1
  clr p2.2
  RET
 ;; trafic light 4
 T3S1:
  setb P3.0
  clr p3.1
  clr p3.2
  RET

T3S2:
  setb P3.0
  setb p3.1
  clr p3.2
  RET
T3S3:
  clr P3.0
  clr p3.1
  setb p3.2
  RET
 T3S4: ; only yellow is on
  clr P3.0
  setb p3.1
  clr p3.2
  RET
END
