(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.992836116895644327229319969774223864078521728515625 679 {- 4471336366091194 679 (-4.99849e+204)}
; -1.992836116895644327229319969774223864078521728515625 679 I == -1.992836116895644327229319969774223864078521728515625 679
; [HW: -1.992836116895644327229319969774223864078521728515625 679] 

; mpf : - 4471336366091194 679
; mpfd: - 4471336366091194 679 (-4.99849e+204) class: Neg. norm. non-zero
; hwf : - 4471336366091194 679 (-4.99849e+204) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010100110 #b1111111000101010100000011111110001011010101110111010)))
(assert (= r (fp #b1 #b11010100110 #b1111111000101010100000011111110001011010101110111010)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
