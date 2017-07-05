(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.081693182940534736502513624145649373531341552734375p-775 {+ 367913388249702 -775 (5.44324e-234)}
; Y = -1.883568184409853518701538632740266621112823486328125p-610 {- 3979237346064642 -610 (-4.43286e-184)}
; 1.081693182940534736502513624145649373531341552734375p-775 = -1.883568184409853518701538632740266621112823486328125p-610 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011111000 #b0001010011101001110110000010110100001001001001100110)))
(assert (= y (fp #b1 #b00110011101 #b1110001000110001100001100100011111010011100100000010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
