(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2936226788384257435637891830992884933948516845703125 512 {+ 1322358987004261 512 (1.73446e+154)}
; 1.2936226788384257435637891830992884933948516845703125 512 I == 1.2936226788384257435637891830992884933948516845703125 512
; [HW: 1.2936226788384257435637891830992884933948516845703125 512] 

; mpf : + 1322358987004261 512
; mpfd: + 1322358987004261 512 (1.73446e+154) class: Pos. norm. non-zero
; hwf : + 1322358987004261 512 (1.73446e+154) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111111111 #b0100101100101010110110110001101011111001100101100101)))
(assert (= r (fp #b0 #b10111111111 #b0100101100101010110110110001101011111001100101100101)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
