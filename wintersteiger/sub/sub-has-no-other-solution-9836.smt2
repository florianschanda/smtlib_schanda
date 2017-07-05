(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.224105588796636112647320260293781757354736328125p478 {+ 1009281846196176 478 (9.55337e+143)}
; Y = -1.9953640110128885165607925955555401742458343505859375p-129 {- 4482720989095647 -129 (-2.93192e-039)}
; 1.224105588796636112647320260293781757354736328125p478 - -1.9953640110128885165607925955555401742458343505859375p-129 == 1.224105588796636112647320260293781757354736328125p478
; [HW: 1.224105588796636112647320260293781757354736328125p478] 

; mpf : + 1009281846196176 478
; mpfd: + 1009281846196176 478 (9.55337e+143) class: Pos. norm. non-zero
; hwf : + 1009281846196176 478 (9.55337e+143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111011101 #b0011100101011110111110111101111010111011011111010000)))
(assert (= y (fp #b1 #b01101111110 #b1111111011010000001011010000001011101010011011011111)))
(assert (= r (fp #b0 #b10111011101 #b0011100101011110111110111101111010111011011111010000)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
