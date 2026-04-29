(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.951202427362584312930948726716451346874237060546875p-225 {+ 4283834897424046 -225 (3.61871e-068)}
; Y = -1.8194379135393550228627645992673933506011962890625p624 {- 3690420282069096 624 (-1.26664e+188)}
; 1.951202427362584312930948726716451346874237060546875p-225 = -1.8194379135393550228627645992673933506011962890625p624 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100011110 #b1111001110000010000000001001010101100101111010101110)))
(assert (= y (fp #b1 #b11001101111 #b1101000111000110101011101101111111000001000001101000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
