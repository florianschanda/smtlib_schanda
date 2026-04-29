(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.192479366902718940224303878494538366794586181640625p-906 {+ 866850005059594 -906 (2.20432e-273)}
; Y = -1.1231344986717548550814171903766691684722900390625p-218 {- 554548482334568 -218 (-2.6662e-066)}
; 1.192479366902718940224303878494538366794586181640625p-906 * -1.1231344986717548550814171903766691684722900390625p-218 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001110101 #b0011000101000110010100111110101000000000100000001010)))
(assert (= y (fp #b1 #b01100100101 #b0001111110000101101111100001010011001101111101101000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
