(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.310943373306260983923721141763962805271148681640625p-947 {- 1400364460155402 -947 (-1.10199e-285)}
; Y = -1.9422964370915949405826950169284828007221221923828125p397 {- 4243725882958253 397 (-6.26937e+119)}
; -1.310943373306260983923721141763962805271148681640625p-947 / -1.9422964370915949405826950169284828007221221923828125p397 == +zero
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
(assert (= x (fp #b1 #b00001001100 #b0100111110011001111111000010001101000010001000001010)))
(assert (= y (fp #b1 #b10110001100 #b1111000100111010010101101101110001110010000110101101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
