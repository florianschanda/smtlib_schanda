(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0236376949900265476145477805403061211109161376953125p-889 {- 106454714348981 -889 (-2.48016e-268)}
; Y = -1.8585996715296648762461018122849054634571075439453125p53 {- 3866789160761429 53 (-1.67408e+016)}
; -1.0236376949900265476145477805403061211109161376953125p-889 > -1.8585996715296648762461018122849054634571075439453125p53 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000110 #b0000011000001101000111101011011011101111010110110101)))
(assert (= y (fp #b1 #b10000110100 #b1101101111001101001100000010010110010011100001010101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
