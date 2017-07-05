(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7575352374433650393115158294676803052425384521484375 550 {+ 3411635413069959 550 (6.47741e+165)}
; 1.7575352374433650393115158294676803052425384521484375 550 I == 1.7575352374433650393115158294676803052425384521484375 550
; [HW: 1.7575352374433650393115158294676803052425384521484375 550] 

; mpf : + 3411635413069959 550
; mpfd: + 3411635413069959 550 (6.47741e+165) class: Pos. norm. non-zero
; hwf : + 3411635413069959 550 (6.47741e+165) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100101 #b1100000111101101110101000100111001100011000010000111)))
(assert (= r (fp #b0 #b11000100101 #b1100000111101101110101000100111001100011000010000111)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
