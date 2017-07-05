(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.141106680645869619894483548705466091632843017578125p536 {+ 635487994376226 536 (2.56687e+161)}
; Y = 1.0085470223594972249969714539474807679653167724609375p-695 {+ 38492366713359 -695 (6.13549e-210)}
; 1.141106680645869619894483548705466091632843017578125p536 < 1.0085470223594972249969714539474807679653167724609375p-695 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000010111 #b0010010000011111100100010100001010011111000000100010)))
(assert (= y (fp #b0 #b00101001000 #b0000001000110000001000110011110110000011001000001111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
