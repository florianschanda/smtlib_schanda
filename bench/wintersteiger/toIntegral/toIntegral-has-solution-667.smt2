(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.336751757630739945170716964639723300933837890625 852 {- 1516595090182160 852 (-4.01427e+256)}
; -1.336751757630739945170716964639723300933837890625 852 I == -1.336751757630739945170716964639723300933837890625 852
; [HW: -1.336751757630739945170716964639723300933837890625 852] 

; mpf : - 1516595090182160 852
; mpfd: - 1516595090182160 852 (-4.01427e+256) class: Neg. norm. non-zero
; hwf : - 1516595090182160 852 (-4.01427e+256) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101010011 #b0101011000110101010111001111100111100101000000010000)))
(assert (= r (fp #b1 #b11101010011 #b0101011000110101010111001111100111100101000000010000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
