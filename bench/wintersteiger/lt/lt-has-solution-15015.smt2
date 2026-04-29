(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.350913670678391742541180065018124878406524658203125p-690 {+ 1580374676506418 -690 (2.62985e-208)}
; Y = 1.6507265971902975731921969781978987157344818115234375p-404 {+ 2930612060626295 -404 (3.99537e-122)}
; 1.350913670678391742541180065018124878406524658203125p-690 < 1.6507265971902975731921969781978987157344818115234375p-404 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101001101 #b0101100111010101011110100111001101001000011100110010)))
(assert (= y (fp #b0 #b01001101011 #b1010011010010110000001001010110110010001110101110111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
