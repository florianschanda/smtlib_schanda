(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.327566130050257697803317569196224212646484375p-150 {- 1475226701233536 -150 (-9.30158e-046)}
; Y = 1.966349542666059324602656488423235714435577392578125p-737 {+ 4352051440260514 -737 (2.71991e-222)}
; -1.327566130050257697803317569196224212646484375p-150 > 1.966349542666059324602656488423235714435577392578125p-737 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101001 #b0101001111011011010111111011011111010111110110000000)))
(assert (= y (fp #b0 #b00100011110 #b1111011101100010101011110000001001000001010110100010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
