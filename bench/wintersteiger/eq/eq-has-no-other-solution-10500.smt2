(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9013082855306626672842185143963433802127838134765625p-51 {- 4059131658861833 -51 (-8.4435e-016)}
; Y = 1.9770430275129682318180357469827868044376373291015625p-448 {+ 4400210614632345 -448 (2.72006e-135)}
; -1.9013082855306626672842185143963433802127838134765625p-51 = 1.9770430275129682318180357469827868044376373291015625p-448 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001100 #b1110011010111100001000111100100111110111110100001001)))
(assert (= y (fp #b0 #b01000111111 #b1111101000011111011111011110100111110011111110011001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
