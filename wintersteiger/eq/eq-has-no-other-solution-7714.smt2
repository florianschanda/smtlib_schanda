(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.572633577893418621584942229674197733402252197265625p575 {+ 2578912368020634 575 (1.9448e+173)}
; Y = -1.9475854393609350889704501241794787347316741943359375p-307 {- 4267545431607615 -307 (-7.46944e-093)}
; 1.572633577893418621584942229674197733402252197265625p575 = -1.9475854393609350889704501241794787347316741943359375p-307 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111110 #b1001001010011000000111010011100110100100110010011010)))
(assert (= y (fp #b1 #b01011001100 #b1111001010010100111101011001100000111000100100111111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
