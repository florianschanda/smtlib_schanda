(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.379614176922706381134275943622924387454986572265625p-416 {- 1709630265733658 -416 (-8.15229e-126)}
; Y = 1.644093477674690273460100797819904983043670654296875p-652 {+ 2900739146047502 -652 (8.7977e-197)}
; -1.379614176922706381134275943622924387454986572265625p-416 > 1.644093477674690273460100797819904983043670654296875p-652 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001011111 #b0110000100101110011001010000101011111011001000011010)))
(assert (= y (fp #b0 #b00101110011 #b1010010011100011010011110110011000101110000000001110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
