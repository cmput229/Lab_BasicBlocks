.text
main:
    addi    $v0, $0, 1
    
    beq     $a0, $0, mid    # All three branches have the same target
    beq     $a1, $0, mid
    addi    $v0, $v0, 1     # Note that we fall through to mid
    
mid:
    addi    $v0, $v0, 1
    beq     $a2, $0, mid
    
    jr      $ra
