(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6255110554394109900755438502528704702854156494140625p440 {- 2817051356193057 440 (-4.61517e+132)}
; Y = -1.866754769931509461144969463930465281009674072265625p1009 {- 3903516458885146 1009 (-1.02412e+304)}
; -1.6255110554394109900755438502528704702854156494140625p440 > -1.866754769931509461144969463930465281009674072265625p1009 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110110111 #b1010000000100001011111100001011001100110000100100001)))
(assert (= y (fp #b1 #b11111110000 #b1101110111100011101000111111111010000010000000011010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
