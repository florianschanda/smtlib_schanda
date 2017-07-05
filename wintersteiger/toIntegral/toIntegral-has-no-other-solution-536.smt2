(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8060452869241909734654427666100673377513885498046875 918 {- 3630105253835531 918 (-4.00189e+276)}
; -1.8060452869241909734654427666100673377513885498046875 918 I == -1.8060452869241909734654427666100673377513885498046875 918
; [HW: -1.8060452869241909734654427666100673377513885498046875 918] 

; mpf : - 3630105253835531 918
; mpfd: - 3630105253835531 918 (-4.00189e+276) class: Neg. norm. non-zero
; hwf : - 3630105253835531 918 (-4.00189e+276) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110010101 #b1100111001011000111110111110001001101111001100001011)))
(assert (= r (fp #b1 #b11110010101 #b1100111001011000111110111110001001101111001100001011)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
