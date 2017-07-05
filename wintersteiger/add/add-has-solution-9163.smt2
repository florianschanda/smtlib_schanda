(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.148380807490206212406746999477036297321319580078125p-809 {+ 668247749321826 -809 (3.36372e-244)}
; Y = 1.394048704758622303501169881201349198818206787109375p-285 {+ 1774637599916758 -285 (2.24248e-086)}
; 1.148380807490206212406746999477036297321319580078125p-809 + 1.394048704758622303501169881201349198818206787109375p-285 == 1.3940487047586225255457748062326572835445404052734375p-285
; [HW: 1.3940487047586225255457748062326572835445404052734375p-285] 

; mpf : + 1774637599916759 -285
; mpfd: + 1774637599916759 -285 (2.24248e-086) class: Pos. norm. non-zero
; hwf : + 1774637599916759 -285 (2.24248e-086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011010110 #b0010010111111100010010001101101110000110010001100010)))
(assert (= y (fp #b0 #b01011100010 #b0110010011100000011000000011101111111000001011010110)))
(assert (= r (fp #b0 #b01011100010 #b0110010011100000011000000011101111111000001011010111)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
