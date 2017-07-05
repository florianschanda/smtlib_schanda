(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8688992293866777405497714426019228994846343994140625p-305 {- 3913174245688353 -305 (-2.86706e-092)}
; Y = 1.0194065097680489184739371921750716865062713623046875p233 {+ 87399150159947 233 (1.40714e+070)}
; -1.8688992293866777405497714426019228994846343994140625p-305 % 1.0194065097680489184739371921750716865062713623046875p233 == -1.8688992293866777405497714426019228994846343994140625p-305
; [HW: -1.8688992293866777405497714426019228994846343994140625p-305] 

; mpf : - 3913174245688353 -305
; mpfd: - 3913174245688353 -305 (-2.86706e-092) class: Neg. norm. non-zero
; hwf : - 3913174245688353 -305 (-2.86706e-092) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011001110 #b1101111001110000001011100000110110111100010000100001)))
(assert (= y (fp #b0 #b10011101000 #b0000010011110111110100110011010011001000100001001011)))
(assert (= r (fp #b1 #b01011001110 #xde702e0dbc421)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
