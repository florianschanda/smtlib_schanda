(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0489770732916514628385584728675894439220428466796875 75 {- 220573129025979 75 (-3.96292e+022)}
; -1.0489770732916514628385584728675894439220428466796875 75 I == -1.0489770732916514628385584728675894439220428466796875 75
; [HW: -1.0489770732916514628385584728675894439220428466796875 75] 

; mpf : - 220573129025979 75
; mpfd: - 220573129025979 75 (-3.96292e+022) class: Neg. norm. non-zero
; hwf : - 220573129025979 75 (-3.96292e+022) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001001010 #b0000110010001001110000101111000000001010100110111011)))
(assert (= r (fp #b1 #b10001001010 #b0000110010001001110000101111000000001010100110111011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
