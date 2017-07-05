(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.975334236914796814943429126287810504436492919921875p-941 {- 4392514905931166 -941 (-1.06271e-283)}
; Y = -1.712952375708163277323592410539276897907257080078125p-38 {- 3210852053572194 -38 (-6.23168e-012)}
; -1.975334236914796814943429126287810504436492919921875p-941 < -1.712952375708163277323592410539276897907257080078125p-38 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010010 #b1111100110101111100000010010101000110111110110011110)))
(assert (= y (fp #b1 #b01111011001 #b1011011010000100000011000000000101000101101001100010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
