(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4361845256323608754911447249469347298145294189453125 406 {+ 1964400467102677 406 (2.3735e+122)}
; 1.4361845256323608754911447249469347298145294189453125 406 I == 1.4361845256323608754911447249469347298145294189453125 406
; [HW: 1.4361845256323608754911447249469347298145294189453125 406] 

; mpf : + 1964400467102677 406
; mpfd: + 1964400467102677 406 (2.3735e+122) class: Pos. norm. non-zero
; hwf : + 1964400467102677 406 (2.3735e+122) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010101 #b0110111110101001110010100000000010011100101111010101)))
(assert (= r (fp #b0 #b10110010101 #b0110111110101001110010100000000010011100101111010101)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
