(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6764404808362767251850300453952513635158538818359375p34 {+ 3046417097432575 34 (2.8801e+010)}
; Y = -1.3513935957727765124758434467366896569728851318359375p471 {- 1582536066982655 471 (-8.23967e+141)}
; 1.6764404808362767251850300453952513635158538818359375p34 = -1.3513935957727765124758434467366896569728851318359375p471 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000100001 #b1010110100101011001101000000111011100001110111111111)))
(assert (= y (fp #b1 #b10111010110 #b0101100111110100111011100100000111011110001011111111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
