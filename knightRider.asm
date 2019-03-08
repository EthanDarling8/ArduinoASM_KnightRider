;Author: Ethan Darling

;knightRider.asm

.include "./m328Pdef.inc"

loop:

	ldi r16, 0b0000001
	out DDRB, r16
	out PortB, r16

	rcall outer

	ldi r16, 0b0000010
	out DDRB, r16
	out PortB, r16

	rcall outer

	ldi r16, 0b0000100
	out DDRB, r16
	out PortB, r16

	rcall outer

	ldi r16, 0b0001000
	out DDRB, r16
	out PortB, r16

	rcall outer

	ldi r16, 0b0010000
	out DDRB, r16
	out PortB, r16
	
	rcall outer

	ldi r16, 0b0100000
	out DDRB, r16
	out PortB, r16

	rcall outer

	ldi r16, 0b1000000
	out DDRB, r16
	out PortB, r16

	ldi r16, 0b0100000
	out DDRB, r16
	out PortB, r16

	rcall outer

	ldi r16, 0b0010000
	out DDRB, r16
	out PortB, r16

	rcall outer	

	ldi r16, 0b0001000
	out DDRB, r16
	out PortB, r16

	rcall outer

	ldi r16, 0b0000100
	out DDRB, r16
	out PortB, r16

	rcall outer

	ldi r16, 0b0000010
	out DDRB, r16
	out PortB, r16

	rcall outer

	ldi r16, 0b0000001
	out DDRB, r16
	out PortB, r16

	rcall outer

	rjmp loop


    ldi  r19, 100
    ldi  r20, 0
delay: 
	dec  r20
    brne delay
    dec  r19
    brne delay

    lpm
    nop
    ret

outer:
	rcall delay
	rcall delay
	rcall delay
	rcall delay
	rcall delay
	rcall delay
	rcall delay
	rcall delay
	rcall delay
	rcall delay
	rcall delay
	ret	
