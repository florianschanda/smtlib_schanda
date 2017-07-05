(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.985855493104529134740232620970346033573150634765625p-66 {+ 4439898431386714 -66 (2.69134e-020)}
; Y = -1.969803645202724329266175118391402065753936767578125p-796 {- 4367607335157538 -796 (-4.72657e-240)}
; 1.985855493104529134740232620970346033573150634765625p-66 + -1.969803645202724329266175118391402065753936767578125p-796 == 1.985855493104529134740232620970346033573150634765625p-66
; [HW: 1.985855493104529134740232620970346033573150634765625p-66] 

; mpf : + 4439898431386714 -66
; mpfd: + 4439898431386714 -66 (2.69134e-020) class: Pos. norm. non-zero
; hwf : + 4439898431386714 -66 (2.69134e-020) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110111101 #b1111110001100001000001101000110101110111010001011010)))
(assert (= y (fp #b1 #b00011100011 #b1111100001000101000011010011101110101111111100100010)))
(assert (= r (fp #b0 #b01110111101 #b1111110001100001000001101000110101110111010001011010)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
