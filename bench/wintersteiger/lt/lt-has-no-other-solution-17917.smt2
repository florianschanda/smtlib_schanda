(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4312859231912702373534784783259965479373931884765625p838 {- 1942339122974345 838 (-2.62339e+252)}
; Y = 1.774987354499156122500380661222152411937713623046875p981 {+ 3490232760939246 981 (3.62761e+295)}
; -1.4312859231912702373534784783259965479373931884765625p838 < 1.774987354499156122500380661222152411937713623046875p981 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101000101 #b0110111001101000110000010001011101010100111010001001)))
(assert (= y (fp #b0 #b11111010100 #b1100011001100101100100100011111001100011001011101110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
