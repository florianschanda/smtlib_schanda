(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7488799845076525851794713162234984338283538818359375p616 {- 3372655619173887 616 (-4.75595e+185)}
; Y = 1.741432453389761381146172425360418856143951416015625p23 {+ 3339114920806522 23 (1.46082e+007)}
; -1.7488799845076525851794713162234984338283538818359375p616 = 1.741432453389761381146172425360418856143951416015625p23 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001100111 #b1011111110110110100110010100001000010110110111111111)))
(assert (= y (fp #b0 #b10000010110 #b1011110111001110100001000110101110000000100001111010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
