(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9185216770002992969779143095365725457668304443359375p147 {+ 4136653882270271 147 (3.42276e+044)}
; Y = 1.95124259638667307825699026579968631267547607421875p-97 {+ 4284015802625964 -97 (1.23141e-029)}
; 1.9185216770002992969779143095365725457668304443359375p147 < 1.95124259638667307825699026579968631267547607421875p-97 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010010010 #b1110101100100100001111001001001101100010001000111111)))
(assert (= y (fp #b0 #b01110011110 #b1111001110000100101000101000001000001010111110101100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
