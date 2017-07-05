(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.38007077125699861852581307175569236278533935546875p-647 {+ 1711686583807436 -647 (2.36317e-195)}
; Y = 1.2743496336289801273977673190529458224773406982421875p-637 {+ 1235560907780707 -637 (2.23451e-192)}
; 1.38007077125699861852581307175569236278533935546875p-647 * 1.2743496336289801273977673190529458224773406982421875p-637 == +zero
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
(assert (= x (fp #b0 #b00101111000 #b0110000101001100010100010110110010110110110111001100)))
(assert (= y (fp #b0 #b00110000010 #b0100011000111011110001110001000000011011001001100011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
