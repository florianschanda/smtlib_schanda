(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.9992038134416636463441818705177865922451019287109375p112 {+ 4500013921883055 112 (1.03805e+034)}
; -zero - 1.9992038134416636463441818705177865922451019287109375p112 == -1.9992038134416636463441818705177865922451019287109375p112
; [HW: -1.9992038134416636463441818705177865922451019287109375p112] 

; mpf : - 4500013921883055 112
; mpfd: - 4500013921883055 112 (-1.03805e+034) class: Neg. norm. non-zero
; hwf : - 4500013921883055 112 (-1.03805e+034) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10001101111 #b1111111111001011110100100011010011000101001110101111)))
(assert (= r (fp #b1 #b10001101111 #b1111111111001011110100100011010011000101001110101111)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
