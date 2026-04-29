(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.547524525347965695942775710136629641056060791015625 381 {- 2465831248333306 381 (-7.62195e+114)}
; -1.547524525347965695942775710136629641056060791015625 381 I == -1.547524525347965695942775710136629641056060791015625 381
; [HW: -1.547524525347965695942775710136629641056060791015625 381] 

; mpf : - 2465831248333306 381
; mpfd: - 2465831248333306 381 (-7.62195e+114) class: Neg. norm. non-zero
; hwf : - 2465831248333306 381 (-7.62195e+114) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101111100 #b1000110000101010100100010011101000100000100111111010)))
(assert (= r (fp #b1 #b10101111100 #b1000110000101010100100010011101000100000100111111010)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
