(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7905979588745200015154068751144222915172576904296875p-189 {+ 3560536672987163 -189 (2.28207e-057)}
; Y = 1.63990575112211178776533415657468140125274658203125p-887 {+ 2881879302305780 -887 (1.58933e-267)}
; 1.7905979588745200015154068751144222915172576904296875p-189 > 1.63990575112211178776533415657468140125274658203125p-887 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101000010 #b1100101001100100101000001011100110100110100000011011)))
(assert (= y (fp #b0 #b00010001000 #b1010001111010000110111010000000110010111011111110100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
