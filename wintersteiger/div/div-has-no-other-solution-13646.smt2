(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9744219620172993590045962264412082731723785400390625p-481 {- 4388406385042737 -481 (-3.16237e-145)}
; Y = -1.1949936967731620285348981269635260105133056640625p731 {- 878173540127208 731 (-1.34987e+220)}
; -1.9744219620172993590045962264412082731723785400390625p-481 / -1.1949936967731620285348981269635260105133056640625p731 == 0.0000000000000002220446049250313080847263336181640625p-1022
; [HW: 0.0000000000000002220446049250313080847263336181640625p-1022] 

; mpf : + 1 -1023
; mpfd: + 1 -1023 (4.94066e-324) class: Pos. denorm.
; hwf : + 1 -1023 (4.94066e-324) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000011110 #b1111100101110011101101111011101101011110010100110001)))
(assert (= y (fp #b1 #b11011011010 #b0011000111101011000110110101111010010001000111101000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000001)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
