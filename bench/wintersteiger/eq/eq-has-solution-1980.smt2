(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.922655726887106286682183053926564753055572509765625p-283 {+ 4155271987800026 -283 (1.23712e-085)}
; Y = 1.952166285831496761460357447504065930843353271484375p784 {+ 4288175730065478 784 (1.98625e+236)}
; 1.922655726887106286682183053926564753055572509765625p-283 = 1.952166285831496761460357447504065930843353271484375p784 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011100100 #b1110110000110011001010100110110001110010011111011010)))
(assert (= y (fp #b0 #b11100001111 #b1111001111000001001010110111001000000000000001000110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
