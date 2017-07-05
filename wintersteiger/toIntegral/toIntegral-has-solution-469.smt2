(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2457348545835202902054561491240747272968292236328125 459 {+ 1106691399534285 459 (1.85436e+138)}
; 1.2457348545835202902054561491240747272968292236328125 459 I == 1.2457348545835202902054561491240747272968292236328125 459
; [HW: 1.2457348545835202902054561491240747272968292236328125 459] 

; mpf : + 1106691399534285 459
; mpfd: + 1106691399534285 459 (1.85436e+138) class: Pos. norm. non-zero
; hwf : + 1106691399534285 459 (1.85436e+138) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111001010 #b0011111011101000011110101011101111101100011011001101)))
(assert (= r (fp #b0 #b10111001010 #b0011111011101000011110101011101111101100011011001101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
