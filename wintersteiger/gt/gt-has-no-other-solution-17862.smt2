(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.654998835033563153729119221679866313934326171875p-804 {- 2949852509385264 -804 (-1.55125e-242)}
; Y = 1.4136499555493797775085340617806650698184967041015625p977 {+ 1862913785674009 977 (1.80571e+294)}
; -1.654998835033563153729119221679866313934326171875p-804 > 1.4136499555493797775085340617806650698184967041015625p977 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011011011 #b1010011110101110000000001110111101100011001000110000)))
(assert (= y (fp #b0 #b11111010000 #b0110100111100100111101101010011100010011100100011001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
