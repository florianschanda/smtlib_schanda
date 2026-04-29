(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.880997252839418987235831082216463983058929443359375 436 {+ 3967658899602038 436 (3.33785e+131)}
; 1.880997252839418987235831082216463983058929443359375 436 I == 1.880997252839418987235831082216463983058929443359375 436
; [HW: 1.880997252839418987235831082216463983058929443359375 436] 

; mpf : + 3967658899602038 436
; mpfd: + 3967658899602038 436 (3.33785e+131) class: Pos. norm. non-zero
; hwf : + 3967658899602038 436 (3.33785e+131) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110110011 #b1110000110001001000010010011010011001111101001110110)))
(assert (= r (fp #b0 #b10110110011 #b1110000110001001000010010011010011001111101001110110)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
