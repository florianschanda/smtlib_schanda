(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.86132604167215731649775989353656768798828125p340 {- 3879067640319232 340 (-4.1689e+102)}
; Y = -0.9739652731759618209395057419897057116031646728515625p-1022 {- 4386349641347065 -1023 (-2.16714e-308)}
; -1.86132604167215731649775989353656768798828125p340 = -0.9739652731759618209395057419897057116031646728515625p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101010011 #b1101110001111111110111010000110000101100110100000000)))
(assert (= y (fp #b1 #b00000000000 #b1111100101010101110010011100001110111010111111111001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
