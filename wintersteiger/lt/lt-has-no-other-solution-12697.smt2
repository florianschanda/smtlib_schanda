(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0248890371873697890947596533806063234806060791015625p975 {+ 112090258602649 975 (3.27282e+293)}
; Y = 1.3958709786262704088954933467903174459934234619140625p-128 {+ 1782844391828065 -128 (4.1021e-039)}
; 1.0248890371873697890947596533806063234806060791015625p975 < 1.3958709786262704088954933467903174459934234619140625p-128 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111001110 #b0000011001011111001000001100000010111111101010011001)))
(assert (= y (fp #b0 #b01101111111 #b0110010101010111110011001110101010100010101001100001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
