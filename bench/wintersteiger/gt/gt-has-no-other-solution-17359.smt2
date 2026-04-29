(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7480647052360358539857543291873298585414886474609375p594 {+ 3368983927750031 594 (1.13338e+179)}
; Y = -1.04772451107517117208089985069818794727325439453125p-387 {- 214932090294580 -387 (-3.32383e-117)}
; 1.7480647052360358539857543291873298585414886474609375p594 > -1.04772451107517117208089985069818794727325439453125p-387 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001010001 #b1011111110000001001010110010010001000111110110001111)))
(assert (= y (fp #b1 #b01001111100 #b0000110000110111101011000110111001001001000100110100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
