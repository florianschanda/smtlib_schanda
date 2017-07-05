(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.92874890641140073199721882701851427555084228515625p-917 {+ 4182713228835140 -917 (1.74088e-276)}
; Y = 1.7090171046202600191321607780992053449153900146484375p-347 {+ 3193129168167111 -347 (5.96126e-105)}
; 1.92874890641140073199721882701851427555084228515625p-917 * 1.7090171046202600191321607780992053449153900146484375p-347 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001101010 #b1110110111000010011111010000001100111011100101000100)))
(assert (= y (fp #b0 #b01010100100 #b1011010110000010001001010001110010100110000011000111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
