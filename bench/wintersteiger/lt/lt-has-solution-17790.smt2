(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7242324252700758080436571617610752582550048828125p547 {- 3261652880575944 547 (-7.94335e+164)}
; Y = -1.70035429208106325660310176317580044269561767578125p-163 {- 3154115328843604 -163 (-1.45429e-049)}
; -1.7242324252700758080436571617610752582550048828125p547 < -1.70035429208106325660310176317580044269561767578125p-163 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000100010 #b1011100101100111010010111101010100111100110111001000)))
(assert (= y (fp #b1 #b01101011100 #b1011001101001010011010110011110000011001111101010100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
