(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9791646185326092766132433098391629755496978759765625p-595 {- 4409765411157833 -595 (-1.52628e-179)}
; Y = 1.1516700046636614285233690679888240993022918701171875p214 {+ 683060976486547 214 (3.03213e+064)}
; -1.9791646185326092766132433098391629755496978759765625p-595 < 1.1516700046636614285233690679888240993022918701171875p214 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110101100 #b1111101010101010100010000100110111111111011101001001)))
(assert (= y (fp #b0 #b10011010101 #b0010011011010011110110000110110111010000100010010011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
