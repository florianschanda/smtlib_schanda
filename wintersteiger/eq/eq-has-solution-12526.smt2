(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0022152267484880638903632643632590770721435546875p-652 {+ 9976494359032 -652 (5.36295e-197)}
; Y = -1.544672609251895867288340014056302607059478759765625p-740 {- 2452987360065754 -740 (-2.67079e-223)}
; 1.0022152267484880638903632643632590770721435546875p-652 = -1.544672609251895867288340014056302607059478759765625p-740 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101110011 #b0000000010010001001011010101011001110000000111111000)))
(assert (= y (fp #b1 #b00100011011 #b1000101101101111101010100000001111000011100011011010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
