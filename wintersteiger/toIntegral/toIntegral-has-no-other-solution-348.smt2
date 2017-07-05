(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.74597381752014957356777813402004539966583251953125 191 {- 3359567406611892 191 (-5.47983e+057)}
; -1.74597381752014957356777813402004539966583251953125 191 I == -1.74597381752014957356777813402004539966583251953125 191
; [HW: -1.74597381752014957356777813402004539966583251953125 191] 

; mpf : - 3359567406611892 191
; mpfd: - 3359567406611892 191 (-5.47983e+057) class: Neg. norm. non-zero
; hwf : - 3359567406611892 191 (-5.47983e+057) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111110 #b1011111011111000001000111101110111101011110110110100)))
(assert (= r (fp #b1 #b10010111110 #b1011111011111000001000111101110111101011110110110100)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
