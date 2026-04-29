(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.20123761443282806027355036349035799503326416015625p-93 {- 906293645372612 -93 (-1.21294e-028)}
; Y = 1.921173145013444383266687509603798389434814453125p567 {+ 4148595032626256 567 (9.28056e+170)}
; -1.20123761443282806027355036349035799503326416015625p-93 < 1.921173145013444383266687509603798389434814453125p567 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110100010 #b0011001110000100010011101110110010110110110011000100)))
(assert (= y (fp #b0 #b11000110110 #b1110101111010010000000001101001111001001010001010000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
