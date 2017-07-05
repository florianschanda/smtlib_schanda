(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6133410108214161216011461874586530029773712158203125 74 {+ 2762242347786373 74 (3.04752e+022)}
; 1.6133410108214161216011461874586530029773712158203125 74 I == 1.6133410108214161216011461874586530029773712158203125 74
; [HW: 1.6133410108214161216011461874586530029773712158203125 74] 

; mpf : + 2762242347786373 74
; mpfd: + 2762242347786373 74 (3.04752e+022) class: Pos. norm. non-zero
; hwf : + 2762242347786373 74 (3.04752e+022) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001001001 #b1001110100000011111010101001111011000110000010000101)))
(assert (= r (fp #b0 #b10001001001 #b1001110100000011111010101001111011000110000010000101)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
