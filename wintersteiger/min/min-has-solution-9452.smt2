(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6677153766507541998720398623845539987087249755859375p-38 {+ 3007122721473887 -38 (6.06711e-012)}
; Y = 1.7713021881012027680668552420684136450290679931640625p309 {+ 3473636246922625 309 (1.8474e+093)}
; 1.6677153766507541998720398623845539987087249755859375p-38 m 1.7713021881012027680668552420684136450290679931640625p309 == 1.6677153766507541998720398623845539987087249755859375p-38
; [HW: 1.6677153766507541998720398623845539987087249755859375p-38] 

; mpf : + 3007122721473887 -38
; mpfd: + 3007122721473887 -38 (6.06711e-012) class: Pos. norm. non-zero
; hwf : + 3007122721473887 -38 (6.06711e-012) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111011001 #b1010101011101111011001010001100111000000010101011111)))
(assert (= y (fp #b0 #b10100110100 #b1100010101110100000011110110100100111010010110000001)))
(assert (= r (fp #b0 #b01111011001 #b1010101011101111011001010001100111000000010101011111)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
