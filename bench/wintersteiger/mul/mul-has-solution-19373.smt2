(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6041287560055508265577373094856739044189453125p472 {+ 2720754040430400 472 (1.95613e+142)}
; Y = -1.408350215113558956403494448750279843807220458984375p596 {- 1839045876622086 596 (-3.65248e+179)}
; 1.6041287560055508265577373094856739044189453125p472 * -1.408350215113558956403494448750279843807220458984375p596 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111010111 #b1001101010101000001011101010000110011101111101000000)))
(assert (= y (fp #b1 #b11001010011 #b0110100010001001101000111100001100111010001100000110)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
