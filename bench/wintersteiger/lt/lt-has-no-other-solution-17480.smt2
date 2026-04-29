(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8975658244933140128551940506440587341785430908203125p-265 {+ 4042277112728581 -265 (3.20072e-080)}
; Y = 1.526949927221611158500991223263554275035858154296875p-134 {+ 2373171495878158 -134 (7.01141e-041)}
; 1.8975658244933140128551940506440587341785430908203125p-265 < 1.526949927221611158500991223263554275035858154296875p-134 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110110 #b1110010111000110110111111011011000110100110000000101)))
(assert (= y (fp #b0 #b01101111001 #b1000011011100110001100001100000000001011111000001110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
