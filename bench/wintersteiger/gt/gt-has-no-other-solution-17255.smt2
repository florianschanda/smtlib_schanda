(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8306154093862978537998742467607371509075164794921875p-666 {+ 3740759248200323 -666 (5.97888e-201)}
; Y = -1.00352160407026502753069507889449596405029296875p34 {- 15859894778592 34 (-1.72404e+010)}
; 1.8306154093862978537998742467607371509075164794921875p-666 > -1.00352160407026502753069507889449596405029296875p34 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101100101 #b1101010010100011001101100010001011011110001010000011)))
(assert (= y (fp #b1 #b10000100001 #b0000000011100110110010101011011001001111101011100000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
