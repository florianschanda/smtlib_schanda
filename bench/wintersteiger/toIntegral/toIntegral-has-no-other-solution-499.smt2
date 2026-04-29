(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.859390939506760265231832818244583904743194580078125 552 {+ 3870352714928226 552 (2.74112e+166)}
; 1.859390939506760265231832818244583904743194580078125 552 I == 1.859390939506760265231832818244583904743194580078125 552
; [HW: 1.859390939506760265231832818244583904743194580078125 552] 

; mpf : + 3870352714928226 552
; mpfd: + 3870352714928226 552 (2.74112e+166) class: Pos. norm. non-zero
; hwf : + 3870352714928226 552 (2.74112e+166) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100111 #b1101110000000001000010110110101110101001000001100010)))
(assert (= r (fp #b0 #b11000100111 #b1101110000000001000010110110101110101001000001100010)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
