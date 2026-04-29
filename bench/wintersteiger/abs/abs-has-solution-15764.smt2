(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.430446017592228002968113287352025508880615234375p-29 {- 1938556524431472 -29 (-2.66441e-009)}
; -1.430446017592228002968113287352025508880615234375p-29 | == 1.430446017592228002968113287352025508880615234375p-29
; [HW: 1.430446017592228002968113287352025508880615234375p-29] 

; mpf : + 1938556524431472 -29
; mpfd: + 1938556524431472 -29 (2.66441e-009) class: Pos. norm. non-zero
; hwf : + 1938556524431472 -29 (2.66441e-009) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111100010 #b0110111000110001101101011101000001000000100001110000)))
(assert (= r (fp #b0 #b01111100010 #b0110111000110001101101011101000001000000100001110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
