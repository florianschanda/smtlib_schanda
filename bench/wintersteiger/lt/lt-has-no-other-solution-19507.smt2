(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3850552729592002787484261716599576175212860107421875p-311 {+ 1734134783816099 -311 (3.32e-094)}
; Y = -1.640489402690571640874850345426239073276519775390625p91 {- 2884507835292010 91 (-4.06166e+027)}
; 1.3850552729592002787484261716599576175212860107421875p-311 < -1.640489402690571640874850345426239073276519775390625p91 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011001000 #b0110001010010010111110110111110010000011000110100011)))
(assert (= y (fp #b1 #b10001011010 #b1010001111110111000111010000110111111101100101101010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
