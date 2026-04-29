(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.840639486908313582347318515530787408351898193359375p-591 {- 3785903679993206 -591 (-2.27113e-178)}
; Y = -1.3156095038437956024068853366770781576633453369140625p-256 {- 1421378843905505 -256 (-1.13618e-077)}
; -1.840639486908313582347318515530787408351898193359375p-591 = -1.3156095038437956024068853366770781576633453369140625p-256 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110110000 #b1101011100110100001001100011111111111111010101110110)))
(assert (= y (fp #b1 #b01011111111 #b0101000011001011110010001101000101010000110111100001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
