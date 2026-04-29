(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.502825715072501733260423861793242394924163818359375 940 {- 2264525703032822 940 (-1.3967e+283)}
; -1.502825715072501733260423861793242394924163818359375 940 I == -1.502825715072501733260423861793242394924163818359375 940
; [HW: -1.502825715072501733260423861793242394924163818359375 940] 

; mpf : - 2264525703032822 940
; mpfd: - 2264525703032822 940 (-1.3967e+283) class: Neg. norm. non-zero
; hwf : - 2264525703032822 940 (-1.3967e+283) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110101011 #b1000000010111001001011111010000111010010111111110110)))
(assert (= r (fp #b1 #b11110101011 #b1000000010111001001011111010000111010010111111110110)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
