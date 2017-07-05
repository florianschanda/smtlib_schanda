(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9811520370417599057333291057148016989231109619140625p-348 {- 4418715948415073 -348 (-3.45525e-105)}
; Y = -1.41378517450084562057099901721812784671783447265625p728 {- 1863522757693444 728 (-1.99627e+219)}
; -1.9811520370417599057333291057148016989231109619140625p-348 / -1.41378517450084562057099901721812784671783447265625p728 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010100011 #b1111101100101100110001111010011101111111100001100001)))
(assert (= y (fp #b1 #b11011010111 #b0110100111101101110100110100000000001101000000000100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
