(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.771472231314883405417504036449827253818511962890625p38 {+ 3474402053476394 38 (4.86939e+011)}
; Y = -1.0989827141530617016229598448262549936771392822265625p294 {- 445778514575849 294 (-3.49792e+088)}
; 1.771472231314883405417504036449827253818511962890625p38 > -1.0989827141530617016229598448262549936771392822265625p294 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000100101 #b1100010101111111001101000100001101000101000000101010)))
(assert (= y (fp #b1 #b10100100101 #b0001100101010110111011100110000000101000000111101001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
