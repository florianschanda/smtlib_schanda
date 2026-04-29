(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7204665556898153244702598385629244148731231689453125p-16 {- 3244692911737557 -16 (-2.62522e-005)}
; Y = -1.7801422647165427992632658060756511986255645751953125p-982 {- 3513448412673397 -982 (-4.35511e-296)}
; -1.7204665556898153244702598385629244148731231689453125p-16 < -1.7801422647165427992632658060756511986255645751953125p-982 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111101111 #b1011100001110000011111110000011010001100101011010101)))
(assert (= y (fp #b1 #b00000101001 #b1100011110110111011001110100100100101111010101110101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
