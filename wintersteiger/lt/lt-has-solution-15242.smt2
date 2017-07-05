(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.404956558703636115836843600845895707607269287109375p-566 {+ 1823762206878934 -566 (5.81682e-171)}
; Y = 1.6650909777958553537047237114165909588336944580078125p-370 {+ 2995303479768893 -370 (6.92372e-112)}
; 1.404956558703636115836843600845895707607269287109375p-566 < 1.6650909777958553537047237114165909588336944580078125p-370 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111001001 #b0110011110101011001110111010011111101110110011010110)))
(assert (= y (fp #b0 #b01010001101 #b1010101001000011011001101111111001111111011100111101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
