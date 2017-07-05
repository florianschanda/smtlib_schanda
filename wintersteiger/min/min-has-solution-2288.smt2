(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8643366131973204691263390486710704863071441650390625p278 {- 3892626049118129 278 (-9.05447e+083)}
; Y = -1.5601931660919532429687706098775379359722137451171875p639 {- 2522885734067219 639 (-3.55914e+192)}
; -1.8643366131973204691263390486710704863071441650390625p278 m -1.5601931660919532429687706098775379359722137451171875p639 == -1.5601931660919532429687706098775379359722137451171875p639
; [HW: -1.5601931660919532429687706098775379359722137451171875p639] 

; mpf : - 2522885734067219 639
; mpfd: - 2522885734067219 639 (-3.55914e+192) class: Neg. norm. non-zero
; hwf : - 2522885734067219 639 (-3.55914e+192) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100010101 #b1101110101000101001010100000111001101010111110110001)))
(assert (= y (fp #b1 #b11001111110 #b1000111101101000110100011011111111001110110000010011)))
(assert (= r (fp #b1 #b11001111110 #b1000111101101000110100011011111111001110110000010011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
