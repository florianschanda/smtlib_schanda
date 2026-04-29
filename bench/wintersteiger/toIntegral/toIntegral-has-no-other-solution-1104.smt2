(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5174185438071956522065875105909071862697601318359375 199 {- 2330245961084671 199 (-1.2192e+060)}
; -1.5174185438071956522065875105909071862697601318359375 199 I == -1.5174185438071956522065875105909071862697601318359375 199
; [HW: -1.5174185438071956522065875105909071862697601318359375 199] 

; mpf : - 2330245961084671 199
; mpfd: - 2330245961084671 199 (-1.2192e+060) class: Neg. norm. non-zero
; hwf : - 2330245961084671 199 (-1.2192e+060) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011000110 #b1000010001110101100010101010101111111110111011111111)))
(assert (= r (fp #b1 #b10011000110 #b1000010001110101100010101010101111111110111011111111)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
