(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3505741950842413690025978212361223995685577392578125 764 {+ 1578845814347101 764 (1.31049e+230)}
; 1.3505741950842413690025978212361223995685577392578125 764 I == 1.3505741950842413690025978212361223995685577392578125 764
; [HW: 1.3505741950842413690025978212361223995685577392578125 764] 

; mpf : + 1578845814347101 764
; mpfd: + 1578845814347101 764 (1.31049e+230) class: Pos. norm. non-zero
; hwf : + 1578845814347101 764 (1.31049e+230) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011111011 #b0101100110111111001110101111111010110101010101011101)))
(assert (= r (fp #b0 #b11011111011 #b0101100110111111001110101111111010110101010101011101)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
