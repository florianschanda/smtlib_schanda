(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.819039166256243067465447893482632935047149658203125 680 {- 3688624483953458 680 (-9.12513e+204)}
; -1.819039166256243067465447893482632935047149658203125 680 I == -1.819039166256243067465447893482632935047149658203125 680
; [HW: -1.819039166256243067465447893482632935047149658203125 680] 

; mpf : - 3688624483953458 680
; mpfd: - 3688624483953458 680 (-9.12513e+204) class: Neg. norm. non-zero
; hwf : - 3688624483953458 680 (-9.12513e+204) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010100111 #b1101000110101100100011010000000100110110101100110010)))
(assert (= r (fp #b1 #b11010100111 #b1101000110101100100011010000000100110110101100110010)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
