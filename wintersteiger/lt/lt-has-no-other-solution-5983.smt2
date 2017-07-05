(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2676149625149708555227334727533161640167236328125p319 {+ 1205230645461192 319 (1.3538e+096)}
; Y = 1.9141879948617932516441442203358747065067291259765625p894 {+ 4117136713006153 894 (2.52814e+269)}
; 1.2676149625149708555227334727533161640167236328125p319 < 1.9141879948617932516441442203358747065067291259765625p894 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100111110 #b0100010010000010011010100000011111101100000011001000)))
(assert (= y (fp #b0 #b11101111101 #b1110101000001000001110010111010001010011110001001001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
