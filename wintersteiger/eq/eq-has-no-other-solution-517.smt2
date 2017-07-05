(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.240334264977760891923708186368457973003387451171875p1020 {+ 1082369306198206 1020 (1.39359e+307)}
; Y = -1.2828377349252126915502003612346015870571136474609375p325 {- 1273787917615503 325 (-8.7684e+097)}
; 1.240334264977760891923708186368457973003387451171875p1020 = -1.2828377349252126915502003612346015870571136474609375p325 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111111011 #b0011110110000110100010111110000000110000000010111110)))
(assert (= y (fp #b1 #b10101000100 #b0100100001101000000011011100010110010100000110001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
