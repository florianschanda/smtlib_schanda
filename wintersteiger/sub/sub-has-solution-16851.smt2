(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.9758578130759099078517238012864254415035247802734375p-1022 {- 4394872883335255 -1023 (-2.17136e-308)}
; Y = +zero {+ 0 -1023 (0)}
; -0.9758578130759099078517238012864254415035247802734375p-1022 - +zero == -0.9758578130759099078517238012864254415035247802734375p-1022
; [HW: -0.9758578130759099078517238012864254415035247802734375p-1022] 

; mpf : - 4394872883335255 -1023
; mpfd: - 4394872883335255 -1023 (-2.17136e-308) class: Neg. denorm.
; hwf : - 4394872883335255 -1023 (-2.17136e-308) class: Neg. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b1111100111010001110100010101000010110101000001010111)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b00000000000 #b1111100111010001110100010101000010110101000001010111)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
