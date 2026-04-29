(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8111089765521597438890921694110147655010223388671875 694 {- 3652910084557171 694 (-1.48854e+209)}
; -1.8111089765521597438890921694110147655010223388671875 694 I == -1.8111089765521597438890921694110147655010223388671875 694
; [HW: -1.8111089765521597438890921694110147655010223388671875 694] 

; mpf : - 3652910084557171 694
; mpfd: - 3652910084557171 694 (-1.48854e+209) class: Neg. norm. non-zero
; hwf : - 3652910084557171 694 (-1.48854e+209) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010110101 #b1100111110100100110101100111111111001000100101110011)))
(assert (= r (fp #b1 #b11010110101 #b1100111110100100110101100111111111001000100101110011)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
