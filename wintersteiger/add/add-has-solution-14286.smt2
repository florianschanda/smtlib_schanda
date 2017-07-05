(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.997192726482081237548982244334183633327484130859375p-299 {- 4490956791401270 -299 (-1.96088e-090)}
; Y = 1.4595601709633709841540394336334429681301116943359375p-843 {+ 2069675014704959 -843 (2.48849e-254)}
; -1.997192726482081237548982244334183633327484130859375p-299 + 1.4595601709633709841540394336334429681301116943359375p-843 == -1.997192726482081237548982244334183633327484130859375p-299
; [HW: -1.997192726482081237548982244334183633327484130859375p-299] 

; mpf : - 4490956791401270 -299
; mpfd: - 4490956791401270 -299 (-1.96088e-090) class: Neg. norm. non-zero
; hwf : - 4490956791401270 -299 (-1.96088e-090) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011010100 #b1111111101001000000001011100010000001100101100110110)))
(assert (= y (fp #b0 #b00010110100 #b0111010110100101101111000100000011010100111100111111)))
(assert (= r (fp #b1 #b01011010100 #b1111111101001000000001011100010000001100101100110110)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
