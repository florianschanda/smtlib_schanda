(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.016045273111553459699507584446109831333160400390625p897 {+ 72261486006250 897 (1.07354e+270)}
; Y = -1.0422613529622257733109336186316795647144317626953125p799 {- 190328213452853 799 (-3.47491e+240)}
; 1.016045273111553459699507584446109831333160400390625p897 = -1.0422613529622257733109336186316795647144317626953125p799 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110000000 #b0000010000011011100010110000001101000100111111101010)))
(assert (= y (fp #b1 #b11100011110 #b0000101011010001101000111101100011011011100000110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
