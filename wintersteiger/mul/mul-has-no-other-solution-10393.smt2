(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.51906934565882778542800224386155605316162109375p-75 {+ 2337680511688544 -75 (4.02094e-023)}
; Y = -1.808102507732424868436282849870622158050537109375p-1016 {- 3639370152700912 -1016 (-2.57482e-306)}
; 1.51906934565882778542800224386155605316162109375p-75 * -1.808102507732424868436282849870622158050537109375p-1016 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110110100 #b1000010011100001101110101000011111110101111101100000)))
(assert (= y (fp #b1 #b00000000111 #b1100111011011111110011100101001010000110101111110000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
