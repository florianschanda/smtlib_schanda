(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5494309906517591546304402072564698755741119384765625p487 {- 2474417204765065 487 (-6.19128e+146)}
; Y = -1.4846953147763652935964273638091981410980224609375p453 {- 2182873639015064 453 (-3.45323e+136)}
; Z = -1.6805982161922916606755507018533535301685333251953125p-978 {- 3065141872832629 -978 (-6.57852e-295)}
; -1.5494309906517591546304402072564698755741119384765625p487 x -1.4846953147763652935964273638091981410980224609375p453 -1.6805982161922916606755507018533535301685333251953125p-978 == 1.1502164661949845214650167690706439316272735595703125p941
; [HW: 1.1502164661949845214650167690706439316272735595703125p941] 

; mpf : + 676514821180645 941
; mpfd: + 676514821180645 941 (2.13799e+283) class: Pos. norm. non-zero
; hwf : + 676514821180645 941 (2.13799e+283) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111100110 #b1000110010100111100000100110100001000010000110001001)))
(assert (= y (fp #b1 #b10111000100 #b0111110000010100111111011111110101111101001010011000)))
(assert (= z (fp #b1 #b00000101101 #b1010111000111011101011110100100001000011000001110101)))
(assert (= r (fp #b0 #b11110101100 #b0010011001110100100101100001100110100000110011100101)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
