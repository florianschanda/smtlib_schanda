(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.935423723607975876603859433089382946491241455078125 572 {- 4212773933074402 572 (-2.99181e+172)}
; -1.935423723607975876603859433089382946491241455078125 572 I == -1.935423723607975876603859433089382946491241455078125 572
; [HW: -1.935423723607975876603859433089382946491241455078125 572] 

; mpf : - 4212773933074402 572
; mpfd: - 4212773933074402 572 (-2.99181e+172) class: Neg. norm. non-zero
; hwf : - 4212773933074402 572 (-2.99181e+172) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000111011 #b1110111101110111111011011101110011001100011111100010)))
(assert (= r (fp #b1 #b11000111011 #b1110111101110111111011011101110011001100011111100010)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
