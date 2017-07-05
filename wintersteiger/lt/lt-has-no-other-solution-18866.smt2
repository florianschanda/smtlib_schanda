(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4621767323517669279198116782936267554759979248046875p-715 {- 2081458959598731 -715 (-8.48307e-216)}
; Y = 1.9174381749392210849691764451563358306884765625p607 {+ 4131774222791744 607 (1.01842e+183)}
; -1.4621767323517669279198116782936267554759979248046875p-715 < 1.9174381749392210849691764451563358306884765625p607 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100110100 #b0111011001010001001101101101111001101100010010001011)))
(assert (= y (fp #b0 #b11001011110 #b1110101011011101001110100110110101110111010001000000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
