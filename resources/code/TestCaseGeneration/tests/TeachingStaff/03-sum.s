#---------------------------------------------------------------
# A program to calculate the sum of the first n integers, given
# n as an input. If n < 0, return -1. 
#
# Register Usage:
#
#       a0: contains n
#	v1: contains the result
#---------------------------------------------------------------

	.text

main:
	add   $t0 $0 $0		# sum = 0
	add   $t1 $0 $0		# i = 0
	bgez  $a0 GOODINPUT	# if n >=0, goodinput

BADINPUT:
	addi   $v1 $0 -1	# return -1
	j      RET

GOODINPUT:
	addi  $t3 $a0 1   	# t3 = n+1 for end condition

LOOP:	
	add   $t0 $t0 $t1  	# sum += i
	addi  $t1 $t1 1	   	# i += 1
	slt   $t2 $t1 $t3  	# if i < n+1 want to keep adding
	bne   $t2 $0 LOOP
	add   $v1 $0 $t0

RET:
	jr  $ra

