(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.602770967923245581943092474830336868762969970703125p710 {+ 2714639106528882 710 (8.63313e+213)}
; Y = 1.4489262003440723791669597630971111357212066650390625p596 {+ 2021783868586417 596 (3.75771e+179)}
; 1.602770967923245581943092474830336868762969970703125p710 = 1.4489262003440723791669597630971111357212066650390625p596 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011000101 #b1001101001001111001100101011101000110101011001110010)))
(assert (= y (fp #b0 #b11001010011 #b0111001011101100110100111101010011001011100110110001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
