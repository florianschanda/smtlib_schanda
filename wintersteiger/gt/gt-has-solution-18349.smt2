(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.980334446013917837348117245710454881191253662109375p100 {+ 4415033845766742 100 (2.51037e+030)}
; Y = 1.1172031832080031588105839546187780797481536865234375p-595 {+ 527836212222199 -595 (8.61558e-180)}
; 1.980334446013917837348117245710454881191253662109375p100 > 1.1172031832080031588105839546187780797481536865234375p-595 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001100011 #b1111101011110111001100101100000011000101101001010110)))
(assert (= y (fp #b0 #b00110101100 #b0001111000000001000001110001111011011101100011110111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
