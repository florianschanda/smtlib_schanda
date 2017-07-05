(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2547980965825846766392714926041662693023681640625p-519 {- 1147508612824040 -519 (-7.31149e-157)}
; Y = 1.402661043601712176354112671106122434139251708984375p-653 {+ 1813424125921286 -653 (3.75289e-197)}
; -1.2547980965825846766392714926041662693023681640625p-519 = 1.402661043601712176354112671106122434139251708984375p-653 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111111000 #b0100000100111010011100101011001111100111101111101000)))
(assert (= y (fp #b0 #b00101110010 #b0110011100010100110010110100110110100100100000000110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
