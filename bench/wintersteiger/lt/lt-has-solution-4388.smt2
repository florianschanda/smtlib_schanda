(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9976023474585804518000031748670153319835662841796875p-146 {+ 4492801560278395 -146 (2.23939e-044)}
; Y = -1.806619021151599557839517729007638990879058837890625p550 {- 3632689123088298 550 (-6.65831e+165)}
; 1.9976023474585804518000031748670153319835662841796875p-146 < -1.806619021151599557839517729007638990879058837890625p550 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101101101 #b1111111101100010110111100001000010111111010101111011)))
(assert (= y (fp #b1 #b11000100101 #b1100111001111110100101011000110000101101011110101010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
