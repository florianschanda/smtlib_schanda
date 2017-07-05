(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8361466232552363653240945495781488716602325439453125p-515 {+ 3765669620919381 -515 (1.71183e-155)}
; Y = -1.0165329446079309771988619104376994073390960693359375p-841 {- 74457763175615 -841 (-6.93258e-254)}
; 1.8361466232552363653240945495781488716602325439453125p-515 < -1.0165329446079309771988619104376994073390960693359375p-841 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111111100 #b1101011000001101101101001000000110001010110001010101)))
(assert (= y (fp #b1 #b00010110110 #b0000010000111011100000001100100001100101110010111111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
