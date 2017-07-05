(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.17569267295207158241510114748962223529815673828125p-197 {- 791249456438676 -197 (-5.85308e-060)}
; Y = -1.8593205154502843168273784613120369613170623779296875p-942 {- 3870035553173723 -942 (-5.00148e-284)}
; -1.17569267295207158241510114748962223529815673828125p-197 * -1.8593205154502843168273784613120369613170623779296875p-942 == +zero
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
(assert (= x (fp #b1 #b01100111010 #b0010110011111010001100011110110001111001110110010100)))
(assert (= y (fp #b1 #b00001010001 #b1101101111111100011011011110011010100100000011011011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
