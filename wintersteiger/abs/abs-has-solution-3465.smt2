(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.717754369995926122527407642337493598461151123046875p-126 {+ 3232478313257198 -126 (2.01921e-038)}
; 1.717754369995926122527407642337493598461151123046875p-126 | == 1.717754369995926122527407642337493598461151123046875p-126
; [HW: 1.717754369995926122527407642337493598461151123046875p-126] 

; mpf : + 3232478313257198 -126
; mpfd: + 3232478313257198 -126 (2.01921e-038) class: Pos. norm. non-zero
; hwf : + 3232478313257198 -126 (2.01921e-038) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110000001 #b1011011110111110110000000001100110110001100011101110)))
(assert (= r (fp #b0 #b01110000001 #b1011011110111110110000000001100110110001100011101110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
