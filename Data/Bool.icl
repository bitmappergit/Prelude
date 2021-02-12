implementation module Data.Bool

not :: !Bool -> Bool
not True = False
not False = True

(&&) :: !Bool !Bool -> Bool
(&&) a b = code {
    push_b 0
    jmp_false l1
    pop_b 1
    jsr_eval 0
    pushB_a 0
    pop_a 1
  .d 0 1 b
    rtn
  :l1
    pop_a 1
  .d 0 1 b
    rtn
}

(||) :: !Bool !Bool -> Bool
(||) a b = code {
    push_b 0
    jmp_true l2
    pop_b 1
    jsr_eval 0
    pushB_a 0
    pop_a 1
  .d 0 1 b
    rtn
  :l2
    pop_a 1
  .d 0 1 b
    rtn
}
