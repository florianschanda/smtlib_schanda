(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.532831661680884582921180481207557022571563720703125p64 {+ 2399660472997234 64 (2.82758e+019)}
; Y = -1.7381432540062931035862447970430366694927215576171875p279 {- 3324301683688787 279 (-1.68832e+084)}
; 1.532831661680884582921180481207557022571563720703125p64 < -1.7381432540062931035862447970430366694927215576171875p279 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000111111 #b1000100001100111101001111110000100110001010101110010)))
(assert (= y (fp #b1 #b10100010110 #b1011110011110110111101001100111110111000010101010011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
