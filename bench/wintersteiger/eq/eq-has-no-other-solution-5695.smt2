(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.545523126406557867795754646067507565021514892578125p-962 {- 2456817748806562 -962 (-3.96479e-290)}
; Y = 1.918115105464580860683554419665597379207611083984375p100 {+ 4134822846853510 100 (2.4315e+030)}
; -1.545523126406557867795754646067507565021514892578125p-962 = 1.918115105464580860683554419665597379207611083984375p100 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000111101 #b1000101110100111011001110101001100100000101110100010)))
(assert (= y (fp #b0 #b10001100011 #b1110101100001001100101110110111111101111000110000110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
