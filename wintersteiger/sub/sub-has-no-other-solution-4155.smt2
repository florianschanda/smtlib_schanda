(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0297923244779969564888233435340225696563720703125p-129 {- 134172701417608 -129 (-1.51314e-039)}
; Y = -1.929598411701990645639170907088555395603179931640625p-732 {- 4186539060545290 -732 (-8.54103e-221)}
; -1.0297923244779969564888233435340225696563720703125p-129 - -1.929598411701990645639170907088555395603179931640625p-732 == -1.0297923244779969564888233435340225696563720703125p-129
; [HW: -1.0297923244779969564888233435340225696563720703125p-129] 

; mpf : - 134172701417608 -129
; mpfd: - 134172701417608 -129 (-1.51314e-039) class: Neg. norm. non-zero
; hwf : - 134172701417608 -129 (-1.51314e-039) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101111110 #b0000011110100000011110000100001101001110000010001000)))
(assert (= y (fp #b1 #b00100100011 #b1110110111111010001010010101100010101100011100001010)))
(assert (= r (fp #b1 #b01101111110 #b0000011110100000011110000100001101001110000010001000)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
