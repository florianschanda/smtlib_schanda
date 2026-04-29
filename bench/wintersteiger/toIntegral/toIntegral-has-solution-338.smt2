(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3590866843267832564379204995930194854736328125 831 {- 1617182657727808 831 (-1.94614e+250)}
; -1.3590866843267832564379204995930194854736328125 831 I == -1.3590866843267832564379204995930194854736328125 831
; [HW: -1.3590866843267832564379204995930194854736328125 831] 

; mpf : - 1617182657727808 831
; mpfd: - 1617182657727808 831 (-1.94614e+250) class: Neg. norm. non-zero
; hwf : - 1617182657727808 831 (-1.94614e+250) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100111110 #b0101101111101101000110101101110110011100110101000000)))
(assert (= r (fp #b1 #b11100111110 #b0101101111101101000110101101110110011100110101000000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
