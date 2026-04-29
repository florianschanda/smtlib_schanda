(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.794543752025208771527786666410975158214569091796875p-257 {+ 3578306945550286 -257 (7.74899e-078)}
; Y = 1.62246072667506968656425669905729591846466064453125p896 {+ 2803313896706612 896 (8.57137e+269)}
; 1.794543752025208771527786666410975158214569091796875p-257 > 1.62246072667506968656425669905729591846466064453125p896 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011111110 #b1100101101100111001110000010011000110000011111001110)))
(assert (= y (fp #b0 #b11101111111 #b1001111101011001100101100001000000011101001000110100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
