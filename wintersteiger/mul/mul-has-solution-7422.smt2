(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.826061491983619777812464235466904938220977783203125p439 {- 3720250227482546 439 (-2.59229e+132)}
; Y = 1.681102934634322476625811759731732308864593505859375p-264 {+ 3067414922620086 -264 (5.67121e-080)}
; -1.826061491983619777812464235466904938220977783203125p439 * 1.681102934634322476625811759731732308864593505859375p-264 == -1.5348986664981960625908641304704360663890838623046875p176
; [HW: -1.5348986664981960625908641304704360663890838623046875p176] 

; mpf : - 2408969435122251 176
; mpfd: - 2408969435122251 176 (-1.47014e+053) class: Neg. norm. non-zero
; hwf : - 2408969435122251 176 (-1.47014e+053) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110110110 #b1101001101111000110001000001010010001101111110110010)))
(assert (= y (fp #b0 #b01011110111 #b1010111001011100110000110000110101110110110010110110)))
(assert (= r (fp #b1 #b10010101111 #b1000100011101111000111100111011101001000101001001011)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
