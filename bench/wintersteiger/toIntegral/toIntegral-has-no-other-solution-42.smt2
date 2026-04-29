(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.301140223038963927848499224637635052204132080078125 131 {- 1356214996264546 131 (-3.54204e+039)}
; -1.301140223038963927848499224637635052204132080078125 131 I == -1.301140223038963927848499224637635052204132080078125 131
; [HW: -1.301140223038963927848499224637635052204132080078125 131] 

; mpf : - 1356214996264546 131
; mpfd: - 1356214996264546 131 (-3.54204e+039) class: Neg. norm. non-zero
; hwf : - 1356214996264546 131 (-3.54204e+039) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010000010 #b0100110100010111100001101001000101110110011001100010)))
(assert (= r (fp #b1 #b10010000010 #b0100110100010111100001101001000101110110011001100010)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
