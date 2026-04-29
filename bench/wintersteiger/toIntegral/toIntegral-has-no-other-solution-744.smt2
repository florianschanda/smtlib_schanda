(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.023383153573231840738344544661231338977813720703125 1014 {- 105308361719154 1014 (-1.79661e+305)}
; -1.023383153573231840738344544661231338977813720703125 1014 I == -1.023383153573231840738344544661231338977813720703125 1014
; [HW: -1.023383153573231840738344544661231338977813720703125 1014] 

; mpf : - 105308361719154 1014
; mpfd: - 105308361719154 1014 (-1.79661e+305) class: Neg. norm. non-zero
; hwf : - 105308361719154 1014 (-1.79661e+305) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110101 #b0000010111111100011100000011011111011111110101110010)))
(assert (= r (fp #b1 #b11111110101 #b0000010111111100011100000011011111011111110101110010)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
