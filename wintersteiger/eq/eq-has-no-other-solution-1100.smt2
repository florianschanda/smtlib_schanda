(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3576628336254206175226499908603727817535400390625p-665 {- 1610770204239720 -665 (-8.86839e-201)}
; Y = -1.593871508035984874140922329388558864593505859375p90 {- 2674559502296816 90 (-1.97312e+027)}
; -1.3576628336254206175226499908603727817535400390625p-665 = -1.593871508035984874140922329388558864593505859375p90 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101100110 #b0101101110001111110010101001110101101010011101101000)))
(assert (= y (fp #b1 #b10001011001 #b1001100000000111111101101001000100001010011011110000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
