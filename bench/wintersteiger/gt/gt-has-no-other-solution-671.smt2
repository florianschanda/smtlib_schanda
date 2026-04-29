(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0344602952699044617901336096110753715038299560546875p1016 {- 155195372936619 1016 (-7.26423e+305)}
; Y = -1.9130566598614835438496584174572490155696868896484375p-526 {- 4112041633120327 -526 (-8.70864e-159)}
; -1.0344602952699044617901336096110753715038299560546875p1016 > -1.9130566598614835438496584174572490155696868896484375p-526 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111110111 #b0000100011010010011000111101000100110001110110101011)))
(assert (= y (fp #b1 #b00111110001 #b1110100110111110000101001100110110000000000001000111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
