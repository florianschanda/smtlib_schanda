(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2566053559801833028330975139397196471691131591796875p-892 {- 1155647785573627 -892 (-3.80577e-269)}
; Y = -1.2289059001111433122588323385571129620075225830078125p-484 {- 1030900526443453 -484 (-2.46037e-146)}
; -1.2566053559801833028330975139397196471691131591796875p-892 < -1.2289059001111433122588323385571129620075225830078125p-484 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000011 #b0100000110110000111000110111101111101001110011111011)))
(assert (= y (fp #b1 #b01000011011 #b0011101010011001100100111011101011010110101110111101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
