(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.461368357761966496610739341122098267078399658203125p-938 {- 2077818364097330 -938 (-6.28961e-283)}
; Y = 1.77597766363572784342750310315750539302825927734375p324 {+ 3494692716797692 324 (6.06954e+097)}
; -1.461368357761966496610739341122098267078399658203125p-938 = 1.77597766363572784342750310315750539302825927734375p324 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010101 #b0111011000011100001111001001011111111111001100110010)))
(assert (= y (fp #b0 #b10101000011 #b1100011010100110011110001101111110111101111011111100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
