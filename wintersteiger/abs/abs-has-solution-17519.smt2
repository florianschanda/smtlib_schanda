(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2109030707701016194022258787299506366252899169921875p-7 {+ 949822990931523 -7 (0.00946018)}
; 1.2109030707701016194022258787299506366252899169921875p-7 | == 1.2109030707701016194022258787299506366252899169921875p-7
; [HW: 1.2109030707701016194022258787299506366252899169921875p-7] 

; mpf : + 949822990931523 -7
; mpfd: + 949822990931523 -7 (0.00946018) class: Pos. norm. non-zero
; hwf : + 949822990931523 -7 (0.00946018) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111111000 #b0011010111111101101111100101111110010101011001000011)))
(assert (= r (fp #b0 #b01111111000 #b0011010111111101101111100101111110010101011001000011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
