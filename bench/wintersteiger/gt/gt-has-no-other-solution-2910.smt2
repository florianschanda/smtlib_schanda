(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8171020014308669754399261364596895873546600341796875p-436 {- 3679900269167739 -436 (-1.024e-131)}
; Y = 1.1684912208599966820798954358906485140323638916015625p-578 {+ 758816999480281 -578 (1.1811e-174)}
; -1.8171020014308669754399261364596895873546600341796875p-436 > 1.1684912208599966820798954358906485140323638916015625p-578 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001001011 #b1101000100101101100110001100010110100100010001111011)))
(assert (= y (fp #b0 #b00110111101 #b0010101100100010001111011001101101000001101111011001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
