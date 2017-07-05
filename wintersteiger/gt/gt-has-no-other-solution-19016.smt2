(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.4656525281104653135599846791592426598072052001953125p348 {+ 2097112552082421 348 (8.40368e+104)}
; -zero > 1.4656525281104653135599846791592426598072052001953125p348 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10101011011 #b0111011100110101000000010000101110001000101111110101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
