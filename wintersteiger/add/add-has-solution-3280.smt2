(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.58098965983145944846910424530506134033203125p-885 {+ 2616544815523072 -885 (6.1289e-267)}
; Y = -1.9453747039269810858996834213030524551868438720703125p-806 {- 4257589164331045 -806 (-4.55855e-243)}
; 1.58098965983145944846910424530506134033203125p-885 + -1.9453747039269810858996834213030524551868438720703125p-806 == -1.9453747039269810858996834213030524551868438720703125p-806
; [HW: -1.9453747039269810858996834213030524551868438720703125p-806] 

; mpf : - 4257589164331045 -806
; mpfd: - 4257589164331045 -806 (-4.55855e-243) class: Neg. norm. non-zero
; hwf : - 4257589164331045 -806 (-4.55855e-243) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010001010 #b1001010010111011101111010000010001001010010100000000)))
(assert (= y (fp #b1 #b00011011001 #b1111001000000100000100111001101111010101000000100101)))
(assert (= r (fp #b1 #b00011011001 #b1111001000000100000100111001101111010101000000100101)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
