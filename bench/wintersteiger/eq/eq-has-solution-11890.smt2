(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0781989320101150742203799381968565285205841064453125p561 {+ 352176681061525 561 (8.13816e+168)}
; Y = -1.6329518026376064199212123639881610870361328125p-226 {- 2850561502502208 -226 (-1.51424e-068)}
; 1.0781989320101150742203799381968565285205841064453125p561 = -1.6329518026376064199212123639881610870361328125p-226 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000110000 #b0001010000000100110110000101111110010000110010010101)))
(assert (= y (fp #b1 #b01100011101 #b1010001000001001001000010001110001000101110101000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
