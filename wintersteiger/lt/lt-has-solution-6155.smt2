(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7358183790467605067675549435080029070377349853515625p-684 {- 3313831377687353 -684 (-2.16266e-206)}
; Y = 0.3520412183971888264721883388119749724864959716796875p-1022 {+ 1585452699992635 -1023 (7.83318e-309)}
; -1.7358183790467605067675549435080029070377349853515625p-684 < 0.3520412183971888264721883388119749724864959716796875p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101010011 #b1011110001011110100101111110000111001101001100111001)))
(assert (= y (fp #b0 #b00000000000 #b0101101000011111010111111000111111011100001000111011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
