(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.71687544841333750156309179146774113178253173828125 131 {- 3228520002345364 131 (-4.67378e+039)}
; -1.71687544841333750156309179146774113178253173828125 131 I == -1.71687544841333750156309179146774113178253173828125 131
; [HW: -1.71687544841333750156309179146774113178253173828125 131] 

; mpf : - 3228520002345364 131
; mpfd: - 3228520002345364 131 (-4.67378e+039) class: Neg. norm. non-zero
; hwf : - 3228520002345364 131 (-4.67378e+039) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010000010 #b1011011110000101001001100011111000111101100110010100)))
(assert (= r (fp #b1 #b10010000010 #b1011011110000101001001100011111000111101100110010100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
