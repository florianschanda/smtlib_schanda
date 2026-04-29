(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7193262206014960913336153680575080215930938720703125p-302 {+ 3239557299058725 -302 (2.11008e-091)}
; Y = -1.2889217924588731722934653589618392288684844970703125p-862 {- 1301188076856997 -862 (-4.19151e-260)}
; 1.7193262206014960913336153680575080215930938720703125p-302 * -1.2889217924588731722934653589618392288684844970703125p-862 == -zero
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
(assert (= x (fp #b0 #b01011010001 #b1011100000100101110000110110000010100011100000100101)))
(assert (= y (fp #b1 #b00010100001 #b0100100111110110110001110101000110110110011010100101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
