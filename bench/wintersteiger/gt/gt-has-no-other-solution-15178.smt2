(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4285054091390623209889554345863871276378631591796875p632 {+ 1929816800924923 632 (2.54589e+190)}
; Y = 1.5765463937036476860242828479385934770107269287109375p625 {+ 2596534123845551 625 (2.1951e+188)}
; 1.4285054091390623209889554345863871276378631591796875p632 > 1.5765463937036476860242828479385934770107269287109375p625 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001110111 #b0110110110110010100001111100111001101001010011111011)))
(assert (= y (fp #b0 #b11001110000 #b1001001110011000100010110110000110010101011110101111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
