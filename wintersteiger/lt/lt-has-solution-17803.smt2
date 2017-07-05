(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4352820887040820263536033962736837565898895263671875p-559 {+ 1960336252488755 -559 (7.60623e-169)}
; Y = -zero {- 0 -1023 (-0)}
; 1.4352820887040820263536033962736837565898895263671875p-559 < -zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111010000 #b0110111101101110101001011001111110000100110000110011)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
