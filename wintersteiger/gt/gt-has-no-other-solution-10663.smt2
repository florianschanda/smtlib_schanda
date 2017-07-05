(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5747745013125025170808157781721092760562896728515625p-735 {+ 2588554229933049 -735 (8.71308e-222)}
; Y = 1.5207643429145039082328594304271973669528961181640625p919 {+ 2345314100697601 919 (6.7395e+276)}
; 1.5747745013125025170808157781721092760562896728515625p-735 > 1.5207643429145039082328594304271973669528961181640625p919 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100100000 #b1001001100100100011010111111010110110110001111111001)))
(assert (= y (fp #b0 #b11110010110 #b1000010101010000110011111101110110111101101000000001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
