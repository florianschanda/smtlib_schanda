(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3373706281782287152992694245767779648303985595703125p-969 {- 1519382235349221 -969 (-2.68032e-292)}
; Y = -1.0910803283004544272927205383894033730030059814453125p-129 {- 410189332594709 -129 (-1.6032e-039)}
; -1.3373706281782287152992694245767779648303985595703125p-969 < -1.0910803283004544272927205383894033730030059814453125p-129 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000110110 #b0101011001011101111010111110011010101000000011100101)))
(assert (= y (fp #b1 #b01101111110 #b0001011101010001000010100101011101011100000000010101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
