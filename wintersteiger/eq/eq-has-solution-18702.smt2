(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2238605110487841276523113265284337103366851806640625p-87 {- 1008178114142273 -87 (-7.90901e-027)}
; Y = -1.2333765595564714079301893434603698551654815673828125p-134 {- 1051034586655533 -134 (-5.66339e-041)}
; -1.2238605110487841276523113265284337103366851806640625p-87 = -1.2333765595564714079301893434603698551654815673828125p-134 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110101000 #b0011100101001110111011000010010111010010000001000001)))
(assert (= y (fp #b1 #b01101111001 #b0011101110111110100100001111001011110010101100101101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
