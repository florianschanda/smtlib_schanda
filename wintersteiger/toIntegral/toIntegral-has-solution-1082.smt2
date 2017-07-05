(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0470766427050561819811491659493185579776763916015625 707 {+ 212014350544345 707 (7.04994e+212)}
; 1.0470766427050561819811491659493185579776763916015625 707 I == 1.0470766427050561819811491659493185579776763916015625 707
; [HW: 1.0470766427050561819811491659493185579776763916015625 707] 

; mpf : + 212014350544345 707
; mpfd: + 212014350544345 707 (7.04994e+212) class: Pos. norm. non-zero
; hwf : + 212014350544345 707 (7.04994e+212) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011000010 #b0000110000001101001101110000000011010010110111011001)))
(assert (= r (fp #b0 #b11011000010 #b0000110000001101001101110000000011010010110111011001)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
