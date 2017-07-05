(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6572391223199416376843373654992319643497467041015625p-340 {- 2959941866373401 -340 (-7.39923e-103)}
; Y = -1.770572056328290955207194201648235321044921875p328 {- 3470348025742208 328 (-9.68171e+098)}
; -1.6572391223199416376843373654992319643497467041015625p-340 + -1.770572056328290955207194201648235321044921875p328 == -1.770572056328290955207194201648235321044921875p328
; [HW: -1.770572056328290955207194201648235321044921875p328] 

; mpf : - 3470348025742208 328
; mpfd: - 3470348025742208 328 (-9.68171e+098) class: Neg. norm. non-zero
; hwf : - 3470348025742208 328 (-9.68171e+098) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010101011 #b1010100001000000110100101011100000000100000100011001)))
(assert (= y (fp #b1 #b10101000111 #b1100010101000100001101011101010100100100001110000000)))
(assert (= r (fp #b1 #b10101000111 #b1100010101000100001101011101010100100100001110000000)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
