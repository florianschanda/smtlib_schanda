(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8833992650503768029324191957130096852779388427734375p663 {+ 3978476600900247 663 (7.20824e+199)}
; Y = -1.491024718091801926078687756671570241451263427734375p-178 {- 2211378737427942 -178 (-3.89176e-054)}
; 1.8833992650503768029324191957130096852779388427734375p663 = -1.491024718091801926078687756671570241451263427734375p-178 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010010110 #b1110001000100110011101000100100010110011101010010111)))
(assert (= y (fp #b1 #b01101001101 #b0111110110110011110010111100000110111011010111100110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
