(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0144535773814051804464497763547115027904510498046875p-415 {+ 65093125709067 -415 (1.1989e-125)}
; Y = -1.122603322417157212242955210967920720577239990234375p-1004 {- 552156277152294 -1004 (-6.54803e-303)}
; 1.0144535773814051804464497763547115027904510498046875p-415 * -1.122603322417157212242955210967920720577239990234375p-1004 == -zero
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
(assert (= x (fp #b0 #b01001100000 #b0000001110110011001110101100101000101001110100001011)))
(assert (= y (fp #b1 #b00000010011 #b0001111101100010111011100110110000101001101000100110)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
