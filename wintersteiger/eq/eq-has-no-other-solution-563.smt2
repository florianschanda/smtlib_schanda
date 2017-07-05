(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.230115177063782372357536587514914572238922119140625p-598 {+ 1036346625676746 -598 (1.18579e-180)}
; Y = -1.7351700258806836973946019497816450893878936767578125p571 {- 3310911454610205 571 (-1.34113e+172)}
; 1.230115177063782372357536587514914572238922119140625p-598 = -1.7351700258806836973946019497816450893878936767578125p571 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110101001 #b0011101011101000110101000000011111001101010111001010)))
(assert (= y (fp #b1 #b11000111010 #b1011110000110100000110100101001000101000001100011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
