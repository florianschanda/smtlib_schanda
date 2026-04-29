(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9877995299056745448496030803653411567211151123046875p-322 {+ 4448653594799947 -322 (2.32656e-097)}
; Y = 1.0479191657615178900897490166244097054004669189453125p420 {+ 215808737067477 420 (2.83744e+126)}
; 1.9877995299056745448496030803653411567211151123046875p-322 < 1.0479191657615178900897490166244097054004669189453125p420 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010111101 #b1111110011100000011011100001001111110010111101001011)))
(assert (= y (fp #b0 #b10110100011 #b0000110001000100011011100011000111001100000111010101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
