(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.81147322757548945304506560205481946468353271484375p253 {+ 3654550525330108 253 (2.62193e+076)}
; Y = -1.0410170779074416902432176357251591980457305908203125p721 {- 184724496779781 721 (-1.14838e+217)}
; 1.81147322757548945304506560205481946468353271484375p253 < -1.0410170779074416902432176357251591980457305908203125p721 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011111100 #b1100111110111100101101011001111000000100001010111100)))
(assert (= y (fp #b1 #b11011010000 #b0000101010000000000110000110000000110000101000000101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
