(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1495545122720829400719821933307684957981109619140625p-476 {- 673533645740129 -476 (-5.89185e-144)}
; Y = -1.8241442372137213201455097077996470034122467041015625p437 {- 3711615679615257 437 (-6.47392e+131)}
; -1.1495545122720829400719821933307684957981109619140625p-476 > -1.8241442372137213201455097077996470034122467041015625p437 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100011 #b0010011001001001001101000101101100101101100001100001)))
(assert (= y (fp #b1 #b10110110100 #b1101001011111011000111011110001000000101000100011001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
