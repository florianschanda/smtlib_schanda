(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.367609589901019884194965925416909158229827880859375p84 {+ 1655566412096054 84 (2.64534e+025)}
; Y = -1.629969403230345559308034353307448327541351318359375p520 {- 2837129969642998 520 (-5.59471e+156)}
; 1.367609589901019884194965925416909158229827880859375p84 < -1.629969403230345559308034353307448327541351318359375p520 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001010011 #b0101111000011011101010010111111001010010001000110110)))
(assert (= y (fp #b1 #b11000000111 #b1010000101000101101011001100000001011010110111110110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
