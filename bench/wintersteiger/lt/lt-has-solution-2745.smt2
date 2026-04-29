(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3874453876505103977478938759304583072662353515625p-499 {- 1744898903449256 -499 (-8.47711e-151)}
; Y = -1.10030704301761605989895542734302580356597900390625p-563 {- 451742761556772 -563 (-3.6444e-170)}
; -1.3874453876505103977478938759304583072662353515625p-499 < -1.10030704301761605989895542734302580356597900390625p-563 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000001100 #b0110001100101111100111101111010011110001111010101000)))
(assert (= y (fp #b1 #b00111001100 #b0001100110101101101110001110110101010001101100100100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
