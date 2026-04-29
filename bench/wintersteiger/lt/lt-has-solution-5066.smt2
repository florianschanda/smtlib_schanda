(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3881942232083226418382082556490786373615264892578125p-666 {+ 1748271358988381 -666 (4.53391e-201)}
; Y = 1.513865875198748600638509742566384375095367431640625p-953 {+ 2314246164063498 -953 (1.98839e-287)}
; 1.3881942232083226418382082556490786373615264892578125p-666 < 1.513865875198748600638509742566384375095367431640625p-953 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101100101 #b0110001101100000101100100101010100101101000001011101)))
(assert (= y (fp #b0 #b00001000110 #b1000001110001100101101101100100010000010010100001010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
