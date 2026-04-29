(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4015313862687956980579429000499658286571502685546875p-121 {- 1808336601577707 -121 (-5.27198e-037)}
; -1.4015313862687956980579429000499658286571502685546875p-121 | == 1.4015313862687956980579429000499658286571502685546875p-121
; [HW: 1.4015313862687956980579429000499658286571502685546875p-121] 

; mpf : + 1808336601577707 -121
; mpfd: + 1808336601577707 -121 (5.27198e-037) class: Pos. norm. non-zero
; hwf : + 1808336601577707 -121 (5.27198e-037) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110000110 #b0110011011001010110000101100110001010111100011101011)))
(assert (= r (fp #b0 #b01110000110 #b0110011011001010110000101100110001010111100011101011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
