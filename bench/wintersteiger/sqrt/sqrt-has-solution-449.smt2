(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.183806910690031077848516360973007977008819580078125p-109 {+ 827792734491746 -109 (1.82394e-033)}
; 1.183806910690031077848516360973007977008819580078125p-109 S == 1.53870524187709900587606171029619872570037841796875p-55
; [HW: 1.53870524187709900587606171029619872570037841796875p-55] 

; mpf : + 2426112726580236 -55
; mpfd: + 2426112726580236 -55 (4.27076e-017) class: Pos. norm. non-zero
; hwf : + 2426112726580236 -55 (4.27076e-017) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010010 #b0010111100001101111110000011111000110001010001100010)))
(assert (= r (fp #b0 #b01111001000 #b1000100111101000100101100011010000001011110000001100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
