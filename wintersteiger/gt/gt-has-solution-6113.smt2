(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.46554558060471240565902917296625673770904541015625p361 {+ 2096630903335364 361 (6.88379e+108)}
; Y = 1.6191299823203355590095497973379679024219512939453125p184 {+ 2788313557671765 184 (3.9701e+055)}
; 1.46554558060471240565902917296625673770904541015625p361 > 1.6191299823203355590095497973379679024219512939453125p184 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101000 #b0111011100101101111111101100001101111110100111000100)))
(assert (= y (fp #b0 #b10010110111 #b1001111001111111010011010111001000001001111101010101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
