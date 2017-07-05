(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9636837779213613952578043608809821307659149169921875 534 {- 4340045903149635 534 (-1.10431e+161)}
; -1.9636837779213613952578043608809821307659149169921875 534 I == -1.9636837779213613952578043608809821307659149169921875 534
; [HW: -1.9636837779213613952578043608809821307659149169921875 534] 

; mpf : - 4340045903149635 534
; mpfd: - 4340045903149635 534 (-1.10431e+161) class: Neg. norm. non-zero
; hwf : - 4340045903149635 534 (-1.10431e+161) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000010101 #b1111011010110011111110101110010111011011101001000011)))
(assert (= r (fp #b1 #b11000010101 #b1111011010110011111110101110010111011011101001000011)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
