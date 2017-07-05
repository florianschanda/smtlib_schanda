(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2573312434643633128672490784083493053913116455078125p-183 {- 1158916892176893 -183 (-1.02556e-055)}
; Y = +zero {+ 0 -1023 (0)}
; -1.2573312434643633128672490784083493053913116455078125p-183 = +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101001000 #b0100000111100000011101011101101011101011000111111101)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
