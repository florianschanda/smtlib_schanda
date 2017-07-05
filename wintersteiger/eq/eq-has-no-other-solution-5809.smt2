(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3034515280083329713534112670458853244781494140625p-912 {- 1366624188463336 -912 (-3.76477e-275)}
; Y = -1.6767633467916756018212254275567829608917236328125p406 {- 3047871156429000 406 (-2.77109e+122)}
; -1.3034515280083329713534112670458853244781494140625p-912 = -1.6767633467916756018212254275567829608917236328125p406 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001101111 #b0100110110101110111111111101010010110111100011101000)))
(assert (= y (fp #b1 #b10110010101 #b1010110101000000010111001101100110011010000011001000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
