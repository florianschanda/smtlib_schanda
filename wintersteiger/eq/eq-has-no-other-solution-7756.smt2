(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9872974229090425435373390428139828145503997802734375p-780 {- 4446392305917015 -780 (-3.12512e-235)}
; Y = -1.081149801469817095522785166394896805286407470703125p-393 {- 365466215660658 -393 (-5.35917e-119)}
; -1.9872974229090425435373390428139828145503997802734375p-780 = -1.081149801469817095522785166394896805286407470703125p-393 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011110011 #b1111110010111111100001100001111011010001110001010111)))
(assert (= y (fp #b1 #b01001110110 #b0001010011000110001110111011111101100011110001110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
