(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7416405331361193287165178844588808715343475341796875p-791 {- 3340052028674683 -791 (-1.33731e-238)}
; Y = 1.0331284371537561295184559639892540872097015380859375p-807 {+ 149197217221023 -807 (1.21045e-243)}
; -1.7416405331361193287165178844588808715343475341796875p-791 < 1.0331284371537561295184559639892540872097015380859375p-807 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011101000 #b1011110111011100001001110110101100110101001001111011)))
(assert (= y (fp #b0 #b00011011000 #b0000100001111011000110101111001000100100100110011111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
