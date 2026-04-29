(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.92963191208827566924810525961220264434814453125p-583 {- 4186689932872480 -583 (-6.09519e-176)}
; -zero > -1.92963191208827566924810525961220264434814453125p-583 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00110111000 #b1110110111111100010110110110001110111100101100100000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
