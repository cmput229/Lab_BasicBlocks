.text
main:
    sll     $t0, $a0, 2
    sll     $t1, $a1, 2
    add     $t2, $t0, $t1
    lw      $v0, 0($t2)
    
    jr      $ra
