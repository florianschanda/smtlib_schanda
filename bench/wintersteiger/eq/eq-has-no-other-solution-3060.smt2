(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.146513900519329443028482273803092539310455322265625p963 {+ 659839947783450 963 (8.93851e+289)}
; Y = -1.7055973693379937738967555560520850121974945068359375p-565 {- 3177728049624191 -565 (-1.41231e-170)}
; 1.146513900519329443028482273803092539310455322265625p963 = -1.7055973693379937738967555560520850121974945068359375p-565 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111000010 #b0010010110000001111011110101101100100011110100011010)))
(assert (= y (fp #b1 #b00111001010 #b1011010010100010000001110111100101110011010001111111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
