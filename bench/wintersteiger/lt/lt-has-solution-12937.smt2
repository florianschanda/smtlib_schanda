(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.3807785369943268438674977005575783550739288330078125p-1022 {- 1714874077318333 -1023 (-8.4726e-309)}
; Y = -1.7860402139964695056306709375348873436450958251953125p267 {- 3540010414852725 267 (-4.23546e+080)}
; -0.3807785369943268438674977005575783550739288330078125p-1022 < -1.7860402139964695056306709375348873436450958251953125p267 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0110000101111010101100111100001101101000110010111101)))
(assert (= y (fp #b1 #b10100001010 #b1100100100111001111011100111010001110100101001110101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
