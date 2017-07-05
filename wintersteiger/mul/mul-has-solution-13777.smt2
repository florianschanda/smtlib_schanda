(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.065950911917463717060172712081111967563629150390625p279 {- 297016502336234 279 (-1.03539e+084)}
; Y = -1.89023860957072553645730295102111995220184326171875p822 {- 4009278270333548 822 (-5.28656e+247)}
; -1.065950911917463717060172712081111967563629150390625p279 * -1.89023860957072553645730295102111995220184326171875p822 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100010110 #b0001000011100010001010001011000111010011101011101010)))
(assert (= y (fp #b1 #b11100110101 #b1110001111100110101011010111000110111110001001101100)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
