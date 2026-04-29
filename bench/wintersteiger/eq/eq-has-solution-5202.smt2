(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3067014661148406151625067650456912815570831298828125p-426 {- 1381260608508781 -426 (-7.54047e-129)}
; Y = -1.6427148582081105843144541722722351551055908203125p651 {- 2894530395931528 651 (-1.53493e+196)}
; -1.3067014661148406151625067650456912815570831298828125p-426 = -1.6427148582081105843144541722722351551055908203125p651 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001010101 #b0100111010000011111111001011111010011001001101101101)))
(assert (= y (fp #b1 #b11010001010 #b1010010010001000111101100000000010101000001110001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
