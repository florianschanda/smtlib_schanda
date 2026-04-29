(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.439167862380318130277601085253991186618804931640625 882 {- 1977836221369098 882 (-4.64053e+265)}
; -1.439167862380318130277601085253991186618804931640625 882 I == -1.439167862380318130277601085253991186618804931640625 882
; [HW: -1.439167862380318130277601085253991186618804931640625 882] 

; mpf : - 1977836221369098 882
; mpfd: - 1977836221369098 882 (-4.64053e+265) class: Neg. norm. non-zero
; hwf : - 1977836221369098 882 (-4.64053e+265) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101110001 #b0111000001101101010011100001011001100000101100001010)))
(assert (= r (fp #b1 #b11101110001 #b0111000001101101010011100001011001100000101100001010)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
