(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.955586743294394747039177673286758363246917724609375p45 {+ 4303580101020822 45 (6.88061e+013)}
; Y = -1.2949434331889140281646177754737436771392822265625p232 {- 1328307135804968 232 (-8.93737e+069)}
; 1.955586743294394747039177673286758363246917724609375p45 < -1.2949434331889140281646177754737436771392822265625p232 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000101100 #b1111010010100001010101010011001011110000110010010110)))
(assert (= y (fp #b1 #b10011100111 #b0100101110000001011010011010111110110111011000101000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
