(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3026369203196475066164339295937679708003997802734375p1014 {- 1362955521580119 1014 (-2.28686e+305)}
; Y = +zero {+ 0 -1023 (0)}
; -1.3026369203196475066164339295937679708003997802734375p1014 + +zero == -1.3026369203196475066164339295937679708003997802734375p1014
; [HW: -1.3026369203196475066164339295937679708003997802734375p1014] 

; mpf : - 1362955521580119 1014
; mpfd: - 1362955521580119 1014 (-2.28686e+305) class: Neg. norm. non-zero
; hwf : - 1362955521580119 1014 (-2.28686e+305) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110101 #b0100110101111001100111001111101101010101110001010111)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b11111110101 #b0100110101111001100111001111101101010101110001010111)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
