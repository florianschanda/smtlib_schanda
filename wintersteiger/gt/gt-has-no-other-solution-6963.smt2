(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1884015148354729607405033675604499876499176025390625p258 {+ 848484992009073 258 (5.5043e+077)}
; Y = 1.3580574762360193563637267288868315517902374267578125p614 {+ 1612547516553757 614 (9.23284e+184)}
; 1.1884015148354729607405033675604499876499176025390625p258 > 1.3580574762360193563637267288868315517902374267578125p614 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100000001 #b0011000000111011000101001110100010111100001101110001)))
(assert (= y (fp #b0 #b11001100101 #b0101101110101001101001111001111010000101101000011101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
