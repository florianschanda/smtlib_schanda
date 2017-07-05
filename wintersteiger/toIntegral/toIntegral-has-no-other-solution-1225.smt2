(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5683482925862695100960308991489000618457794189453125 129 {- 2559613158708181 129 (-1.06736e+039)}
; -1.5683482925862695100960308991489000618457794189453125 129 I == -1.5683482925862695100960308991489000618457794189453125 129
; [HW: -1.5683482925862695100960308991489000618457794189453125 129] 

; mpf : - 2559613158708181 129
; mpfd: - 2559613158708181 129 (-1.06736e+039) class: Neg. norm. non-zero
; hwf : - 2559613158708181 129 (-1.06736e+039) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010000000 #b1001000101111111010001100001000101100101001111010101)))
(assert (= r (fp #b1 #b10010000000 #b1001000101111111010001100001000101100101001111010101)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
