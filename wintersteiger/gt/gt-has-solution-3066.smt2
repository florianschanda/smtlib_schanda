(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.929711164137867029921835637651383876800537109375p-904 {+ 4187046852373488 -904 (1.42684e-272)}
; Y = 1.86107762252818975667878476087935268878936767578125p-266 {+ 3877948859955028 -266 (1.56959e-080)}
; 1.929711164137867029921835637651383876800537109375p-904 > 1.86107762252818975667878476087935268878936767578125p-266 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001110111 #b1110111000000001100011010000010010110010101111110000)))
(assert (= y (fp #b0 #b01011110101 #b1101110001101111100101010100010000010011011101010100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
