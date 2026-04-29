(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6537356196280483811023032103548757731914520263671875p-374 {- 2944163492955699 -374 (-4.29781e-113)}
; Y = 1.31811945847319922364704325445927679538726806640625p245 {+ 1432682674639204 245 (7.45253e+073)}
; -1.6537356196280483811023032103548757731914520263671875p-374 < 1.31811945847319922364704325445927679538726806640625p245 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001001 #b1010011101011011001101111011001010001000011000110011)))
(assert (= y (fp #b0 #b10011110100 #b0101000101110000010001101101111001011101000101100100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
