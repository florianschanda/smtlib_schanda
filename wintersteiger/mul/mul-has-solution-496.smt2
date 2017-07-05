(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.024688627348508962455753135145641863346099853515625p-632 {- 111187692927034 -632 (-5.74956e-191)}
; Y = -1.03477204265607980460117687471210956573486328125p-532 {- 156599358348832 -532 (-7.36016e-161)}
; -1.024688627348508962455753135145641863346099853515625p-632 * -1.03477204265607980460117687471210956573486328125p-532 == +zero
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
(assert (= x (fp #b1 #b00110000111 #b0000011001010001111111100110111100001011100000111010)))
(assert (= y (fp #b1 #b00111101011 #b0000100011100110110100100001001000000101111000100000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
