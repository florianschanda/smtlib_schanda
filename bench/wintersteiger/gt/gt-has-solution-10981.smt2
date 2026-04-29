(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4953844275166623400963317180867306888103485107421875p-959 {- 2231013123169187 -959 (-3.06893e-289)}
; Y = -1.4795016988810198999004796860390342772006988525390625p65 {- 2159483672404081 65 (-5.4584e+019)}
; -1.4953844275166623400963317180867306888103485107421875p-959 > -1.4795016988810198999004796860390342772006988525390625p65 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001000000 #b0111111011010001100000111000101100100001101110100011)))
(assert (= y (fp #b1 #b10001000000 #b0111101011000000100111111001001100010010000001110001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
