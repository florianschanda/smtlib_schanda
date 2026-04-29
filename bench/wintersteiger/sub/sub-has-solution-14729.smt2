(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.8959986556525993961486165062524378299713134765625p-249 {+ 4035219211721512 -249 (2.09589e-075)}
; -zero - 1.8959986556525993961486165062524378299713134765625p-249 == -1.8959986556525993961486165062524378299713134765625p-249
; [HW: -1.8959986556525993961486165062524378299713134765625p-249] 

; mpf : - 4035219211721512 -249
; mpfd: - 4035219211721512 -249 (-2.09589e-075) class: Neg. norm. non-zero
; hwf : - 4035219211721512 -249 (-2.09589e-075) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01100000110 #b1110010101100000001010101111101101001001101100101000)))
(assert (= r (fp #b1 #b01100000110 #b1110010101100000001010101111101101001001101100101000)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
