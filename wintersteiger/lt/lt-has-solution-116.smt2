(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.10497450422126153313229224295355379581451416015625p749 {- 472763138094276 749 (-3.27204e+225)}
; Y = -1.861864494967749639187104548909701406955718994140625p-29 {- 3881492618380618 -29 (-3.46799e-009)}
; -1.10497450422126153313229224295355379581451416015625p749 < -1.861864494967749639187104548909701406955718994140625p-29 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011101100 #b0001101011011111100110111110111010001011010011000100)))
(assert (= y (fp #b1 #b01111100010 #b1101110010100011001001101100101101111000010101001010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
