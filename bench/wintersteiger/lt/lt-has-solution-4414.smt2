(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3811165616421494650722934238729067146778106689453125p-408 {- 1716396404996309 -408 (-2.08926e-123)}
; Y = -1.939272347393418360894656871096231043338775634765625p-74 {- 4230106593720410 -74 (-1.02664e-022)}
; -1.3811165616421494650722934238729067146778106689453125p-408 < -1.939272347393418360894656871096231043338775634765625p-74 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001100111 #b0110000110010000110110101110000000110111100011010101)))
(assert (= y (fp #b1 #b01110110101 #b1111000001110100001001110000111000010111100001011010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
