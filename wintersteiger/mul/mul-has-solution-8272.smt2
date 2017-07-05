(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.239105514508050287503237996133975684642791748046875p587 {+ 1076835506040686 587 (6.27647e+176)}
; Y = -1.025377514896490982465593333472497761249542236328125p258 {- 114290166631426 258 (-4.74922e+077)}
; 1.239105514508050287503237996133975684642791748046875p587 * -1.025377514896490982465593333472497761249542236328125p258 == -1.270550933160802475896389296394772827625274658203125p845
; [HW: -1.270550933160802475896389296394772827625274658203125p845] 

; mpf : - 1218453081767730 845
; mpfd: - 1218453081767730 845 (-2.98084e+254) class: Neg. norm. non-zero
; hwf : - 1218453081767730 845 (-2.98084e+254) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001001010 #b0011110100110110000001001101110100011010111101101110)))
(assert (= y (fp #b1 #b10100000001 #b0000011001111111001001000000110010001000110000000010)))
(assert (= r (fp #b1 #b11101001100 #b0100010101000010110100110111000111010011111100110010)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
