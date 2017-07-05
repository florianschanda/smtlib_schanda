(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6688209088912049349318067470449022948741912841796875p-44 {- 3012101596060027 -44 (-9.48615e-014)}
; Y = 1.4217776368262866615310713314102031290531158447265625p567 {+ 1899517608044073 567 (6.86814e+170)}
; -1.6688209088912049349318067470449022948741912841796875p-44 < 1.4217776368262866615310713314102031290531158447265625p567 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111010011 #b1010101100110111110110001101101010010001100101111011)))
(assert (= y (fp #b0 #b11000110110 #b0110101111111001100111101000010001011010011000101001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
