(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3613412761056207234133808015030808746814727783203125p-369 {+ 1627336436422853 -369 (1.13214e-111)}
; Y = -1.2966216262099605760482745608896948397159576416015625p997 {- 1335865045269209 997 (-1.73668e+300)}
; 1.3613412761056207234133808015030808746814727783203125p-369 + -1.2966216262099605760482745608896948397159576416015625p997 == -1.2966216262099605760482745608896948397159576416015625p997
; [HW: -1.2966216262099605760482745608896948397159576416015625p997] 

; mpf : - 1335865045269209 997
; mpfd: - 1335865045269209 997 (-1.73668e+300) class: Neg. norm. non-zero
; hwf : - 1335865045269209 997 (-1.73668e+300) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010001110 #b0101110010000000110111001010001110010001100011000101)))
(assert (= y (fp #b1 #b11111100100 #b0100101111101111011001010001011111011011101011011001)))
(assert (= r (fp #b1 #b11111100100 #b0100101111101111011001010001011111011011101011011001)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
