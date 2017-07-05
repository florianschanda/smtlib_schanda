(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.533434974791138216687613748945295810699462890625p-911 {- 2402377553695760 -911 (-8.85807e-275)}
; Y = 1.9181199033279507926152973595890216529369354248046875p-11 {+ 4134844454509195 -11 (0.000936582)}
; -1.533434974791138216687613748945295810699462890625p-911 > 1.9181199033279507926152973595890216529369354248046875p-11 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001110000 #b1000100010001111001100011100101101000101010000010000)))
(assert (= y (fp #b0 #b01111110100 #b1110101100001001111001111110111010011001101010001011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
