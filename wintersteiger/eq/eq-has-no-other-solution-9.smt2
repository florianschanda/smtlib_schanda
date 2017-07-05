(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.07904412266051252800025395117700099945068359375p977 {- 355983081359712 977 (-1.3783e+294)}
; Y = 1.7659108669922256584783326616161502897739410400390625p673 {+ 3449355895185201 673 (6.92079e+202)}
; -1.07904412266051252800025395117700099945068359375p977 = 1.7659108669922256584783326616161502897739410400390625p673 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111010000 #b0001010000111100001111000101000111000100100101100000)))
(assert (= y (fp #b0 #b11010100000 #b1100010000010010101111000000110101100001111100110001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
