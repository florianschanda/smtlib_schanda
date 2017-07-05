(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.180640613073842271063540465547703206539154052734375 939 {+ 813532997727334 939 (5.48635e+282)}
; 1.180640613073842271063540465547703206539154052734375 939 I == 1.180640613073842271063540465547703206539154052734375 939
; [HW: 1.180640613073842271063540465547703206539154052734375 939] 

; mpf : + 813532997727334 939
; mpfd: + 813532997727334 939 (5.48635e+282) class: Pos. norm. non-zero
; hwf : + 813532997727334 939 (5.48635e+282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101010 #b0010111000111110011101101001010101111011010001100110)))
(assert (= r (fp #b0 #b11110101010 #b0010111000111110011101101001010101111011010001100110)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
