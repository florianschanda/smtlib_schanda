(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.991199134302713336097667706781066954135894775390625p-502 {- 4463964051895658 -502 (-1.52075e-151)}
; Y = -1.270672016185866670667792277527041733264923095703125p726 {- 1218998391234290 726 (-4.48549e+218)}
; -1.991199134302713336097667706781066954135894775390625p-502 < -1.270672016185866670667792277527041733264923095703125p726 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000001001 #b1111110110111111001110011111100110100111010101101010)))
(assert (= y (fp #b1 #b11011010101 #b0100010101001010110000101110000101110101111011110010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
