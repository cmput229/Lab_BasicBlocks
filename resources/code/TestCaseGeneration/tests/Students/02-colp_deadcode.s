.text
main:
    addi    $t0, $0, 1
    addi    $t1, $0, 5

    j       done

# This block is "dead," as it is never reached
    addi    $t2, $0, 42
    sub     $t3, $t2, $t1
# End dead block
    
done:
    add     $v0, $t1, $t2
    add     $v0, $t4, $t3
    
    jr      $ra
