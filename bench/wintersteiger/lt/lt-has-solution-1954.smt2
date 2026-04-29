(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4923543411203874509141087401076219975948333740234375p-26 {+ 2217366827204023 -26 (2.22378e-008)}
; Y = -1.05070041877640196759102764190174639225006103515625p638 {- 228334387108932 638 (-1.19844e+192)}
; 1.4923543411203874509141087401076219975948333740234375p-26 < -1.05070041877640196759102764190174639225006103515625p638 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111100101 #b0111111000001010111011110010000100100111110110110111)))
(assert (= y (fp #b1 #b11001111101 #b0000110011111010101100111110000010001001110001000100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
