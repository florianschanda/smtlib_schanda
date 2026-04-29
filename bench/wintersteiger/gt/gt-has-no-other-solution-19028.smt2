(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.45446017467091071040385941159911453723907470703125p-30 {+ 2046706673302644 -30 (1.35457e-009)}
; Y = 1.248978857247113882777966864523477852344512939453125p-661 {+ 1121301088721234 -661 (1.30535e-199)}
; 1.45446017467091071040385941159911453723907470703125p-30 > 1.248978857247113882777966864523477852344512939453125p-661 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111100001 #b0111010001010111100000001000001110001011110001110100)))
(assert (= y (fp #b0 #b00101101010 #b0011111110111101000101000001000101000101100101010010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
