(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0734664643796281158216743278899230062961578369140625p170 {+ 330863541604321 170 (1.60653e+051)}
; Y = 1.4344695463818413205814294997253455221652984619140625p131 {+ 1956676887189089 131 (3.905e+039)}
; 1.0734664643796281158216743278899230062961578369140625p170 = 1.4344695463818413205814294997253455221652984619140625p131 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010101001 #b0001001011001110101100101011110111011100111111100001)))
(assert (= y (fp #b0 #b10010000010 #b0110111100111001011001010110110011010001011001100001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
