(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0957357880968230379181704847724176943302154541015625p870 {+ 431155659598873 870 (8.62585e+261)}
; Y = -1.86826031842451101283586467616260051727294921875p355 {- 3910296846517216 355 (-1.37115e+107)}
; 1.0957357880968230379181704847724176943302154541015625p870 * -1.86826031842451101283586467616260051727294921875p355 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101100101 #b0001100010000010001000111111111011101110110000011001)))
(assert (= y (fp #b1 #b10101100010 #b1101111001000110010011101110100000001100001111100000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
