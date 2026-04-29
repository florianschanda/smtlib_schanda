(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0197705379486430299351695794030092656612396240234375p867 {- 89038587338423 867 (-1.00348e+261)}
; Y = -1.69314192647971761829239767394028604030609130859375p-900 {- 3121633721808924 -900 (-2.00308e-271)}
; -1.0197705379486430299351695794030092656612396240234375p867 < -1.69314192647971761829239767394028604030609130859375p-900 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101100010 #b0000010100001111101011101001010111101001111010110111)))
(assert (= y (fp #b1 #b00001111011 #b1011000101110001101111111101000110110111100000011100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
