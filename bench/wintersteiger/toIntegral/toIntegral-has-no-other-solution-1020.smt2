(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6627218178197151754460492156795226037502288818359375 261 {- 2984633731783167 261 (-6.16096e+078)}
; -1.6627218178197151754460492156795226037502288818359375 261 I == -1.6627218178197151754460492156795226037502288818359375 261
; [HW: -1.6627218178197151754460492156795226037502288818359375 261] 

; mpf : - 2984633731783167 261
; mpfd: - 2984633731783167 261 (-6.16096e+078) class: Neg. norm. non-zero
; hwf : - 2984633731783167 261 (-6.16096e+078) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100000100 #b1010100110101000001000110001010111100001100111111111)))
(assert (= r (fp #b1 #b10100000100 #b1010100110101000001000110001010111100001100111111111)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
