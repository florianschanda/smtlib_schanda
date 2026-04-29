(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.72770760968721592831798261613585054874420166015625p-455 {+ 3277303719822020 -455 (1.85704e-137)}
; Y = 1.683993560894350594026036560535430908203125p-734 {+ 3080433145967616 -734 (1.86348e-221)}
; 1.72770760968721592831798261613585054874420166015625p-455 * 1.683993560894350594026036560535430908203125p-734 == +zero
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
(assert (= x (fp #b0 #b01000111000 #b1011101001001011000010111100000010101000001011000100)))
(assert (= y (fp #b0 #b00100100001 #b1010111100011010001100111011011010110111010000000000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
