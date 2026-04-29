(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0371992585690479327098501016735099256038665771484375 664 {+ 167530567030023 664 (7.93925e+199)}
; 1.0371992585690479327098501016735099256038665771484375 664 I == 1.0371992585690479327098501016735099256038665771484375 664
; [HW: 1.0371992585690479327098501016735099256038665771484375 664] 

; mpf : + 167530567030023 664
; mpfd: + 167530567030023 664 (7.93925e+199) class: Pos. norm. non-zero
; hwf : + 167530567030023 664 (7.93925e+199) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010010111 #b0000100110000101111000111111111011111101010100000111)))
(assert (= r (fp #b0 #b11010010111 #b0000100110000101111000111111111011111101010100000111)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
