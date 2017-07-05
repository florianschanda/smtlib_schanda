(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3321889129294455234031602230970747768878936767578125p-740 {+ 1496045864485661 -740 (2.3034e-223)}
; Y = -1.669620359865380709862847652402706444263458251953125p120 {- 3015702003169426 120 (-2.21931e+036)}
; 1.3321889129294455234031602230970747768878936767578125p-740 > -1.669620359865380709862847652402706444263458251953125p120 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100011011 #b0101010100001010010101010010010100100000001100011101)))
(assert (= y (fp #b1 #b10001110111 #b1010101101101100001111010110101001011011100010010010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
