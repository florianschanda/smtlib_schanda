(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5930521183935779649942787727923132479190826416015625p995 {+ 2670869299408601 995 (5.33428e+299)}
; Y = 1.477286926208079886890800480614416301250457763671875p961 {+ 2149509223019518 961 (2.87932e+289)}
; Z = 1.2607615249179815464231069199740886688232421875p-15 {+ 1174365506453184 -15 (3.84754e-005)}
; 1.5930521183935779649942787727923132479190826416015625p995 x 1.477286926208079886890800480614416301250457763671875p961 1.2607615249179815464231069199740886688232421875p-15 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111100010 #b1001011111010010010000110111110101010010111011011001)))
(assert (= y (fp #b0 #b11111000000 #b0111101000101111011110011101101011011111001111111110)))
(assert (= z (fp #b0 #b01111110000 #b0100001011000001010001000110110110010011111011000000)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
