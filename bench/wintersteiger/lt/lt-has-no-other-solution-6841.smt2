(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.197394705727930386274238117039203643798828125p160 {- 888986723161216 160 (-1.74999e+048)}
; Y = 1.657619528963769628404634204343892633914947509765625p285 {+ 2961655065592794 285 (1.03047e+086)}
; -1.197394705727930386274238117039203643798828125p160 < 1.657619528963769628404634204343892633914947509765625p285 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010011111 #b0011001010001000011101011001110110000001010010000000)))
(assert (= y (fp #b0 #b10100011100 #b1010100001011001110000001110001000011100001111011010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
