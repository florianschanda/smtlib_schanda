(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3344076299438019095333629593369551002979278564453125p725 {- 1506038077604757 725 (-2.35524e+218)}
; Y = -1.8383539425337371842061884308350272476673126220703125p-189 {- 3775610503199525 -189 (-2.34293e-057)}
; -1.3344076299438019095333629593369551002979278564453125p725 < -1.8383539425337371842061884308350272476673126220703125p-189 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011010100 #b0101010110011011101111010000101000100100001110010101)))
(assert (= y (fp #b1 #b01101000010 #b1101011010011110010111010010110110100111101100100101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
