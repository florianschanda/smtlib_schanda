(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0353594089819349033376738589140586555004119873046875p-519 {- 159244621115083 -519 (-6.03286e-157)}
; Y = -1.22247677855145919778578900150023400783538818359375p-932 {- 1001946336982940 -932 (-3.36732e-281)}
; -1.0353594089819349033376738589140586555004119873046875p-519 = -1.22247677855145919778578900150023400783538818359375p-932 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111111000 #b0000100100001101010100000111000100101110111011001011)))
(assert (= y (fp #b1 #b00001011011 #b0011100011110100001111001111011111111111011110011100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
