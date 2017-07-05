(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2255674030320433676166658187867142260074615478515625p783 {- 1015865272242041 783 (-6.23482e+235)}
; Y = -1.92109722706806262948475705343298614025115966796875p234 {- 4148253128595724 234 (-5.30357e+070)}
; -1.2255674030320433676166658187867142260074615478515625p783 > -1.92109722706806262948475705343298614025115966796875p234 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100001110 #b0011100110111110110010010000101100010000111101111001)))
(assert (= y (fp #b1 #b10011101001 #b1110101111001101000001110010001010110001100100001100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
