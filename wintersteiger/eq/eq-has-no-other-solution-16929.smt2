(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6766410312755528622119527426548302173614501953125p688 {- 3047320296316168 688 (-2.15316e+207)}
; Y = -1.178786222120902227317174038034863770008087158203125p783 {- 805181563322674 783 (-5.99683e+235)}
; -1.6766410312755528622119527426548302173614501953125p688 = -1.178786222120902227317174038034863770008087158203125p783 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010101111 #b1010110100111000010110001011110001110101110100001000)))
(assert (= y (fp #b1 #b11100001110 #b0010110111000100111011110001000011111100000100110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
