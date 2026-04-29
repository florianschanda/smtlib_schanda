(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.155541557748453573850611064699478447437286376953125p-665 {- 700496901516562 -665 (-7.54811e-201)}
; Y = -1.4162917974755668826247756442171521484851837158203125p318 {- 1874811583988357 318 (-7.56295e+095)}
; -1.155541557748453573850611064699478447437286376953125p-665 < -1.4162917974755668826247756442171521484851837158203125p318 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101100110 #b0010011111010001100100100100111110110010110100010010)))
(assert (= y (fp #b1 #b10100111101 #b0110101010010010000110010110011111000000001010000101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
