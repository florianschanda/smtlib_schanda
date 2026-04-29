(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.773251863966833763441854898701421916484832763671875p-528 {+ 3482416806424574 -528 (2.01805e-159)}
; Y = 1.48458420636715882068301652907393872737884521484375p-643 {+ 2182373251224764 -643 (4.06741e-194)}
; 1.773251863966833763441854898701421916484832763671875p-528 < 1.48458420636715882068301652907393872737884521484375p-643 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101111 #b1100010111110011110101011000101101001110111111111110)))
(assert (= y (fp #b0 #b00101111100 #b0111110000001101101101011110011010000001010010111100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
