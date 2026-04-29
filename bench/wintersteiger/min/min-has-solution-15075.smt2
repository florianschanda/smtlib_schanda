(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.3004278788698810931379057365120388567447662353515625p720 {- 1353006883330105 720 (-7.17271e+216)}
; -zero m -1.3004278788698810931379057365120388567447662353515625p720 == -1.3004278788698810931379057365120388567447662353515625p720
; [HW: -1.3004278788698810931379057365120388567447662353515625p720] 

; mpf : - 1353006883330105 720
; mpfd: - 1353006883330105 720 (-7.17271e+216) class: Neg. norm. non-zero
; hwf : - 1353006883330105 720 (-7.17271e+216) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b11011001111 #b0100110011101000110101110110101010001101100000111001)))
(assert (= r (fp #b1 #b11011001111 #b0100110011101000110101110110101010001101100000111001)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
