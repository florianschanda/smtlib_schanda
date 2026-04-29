(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.756994085256130322392209563986398279666900634765625p250 {- 3409198280281178 250 (-3.17884e+075)}
; Y = 1.794916181540235466940202968544326722621917724609375p-392 {+ 3579984218975382 -392 (1.77945e-118)}
; -1.756994085256130322392209563986398279666900634765625p250 < 1.794916181540235466940202968544326722621917724609375p-392 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011111001 #b1100000111001010010111010100011101110000110001011010)))
(assert (= y (fp #b0 #b01001110111 #b1100101101111111101000000111101011000110110010010110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
