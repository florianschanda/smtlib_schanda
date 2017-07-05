(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5385109131892369394023489803657867014408111572265625p-137 {- 2425237547973993 -137 (-8.83062e-042)}
; Y = 1.277303936531570816015346281346864998340606689453125p-548 {+ 1248865905231954 -548 (1.3863e-165)}
; -1.5385109131892369394023489803657867014408111572265625p-137 = 1.277303936531570816015346281346864998340606689453125p-548 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110110 #b1000100111011011110110011110100010101111110101101001)))
(assert (= y (fp #b0 #b00111011011 #b0100011011111101011001000000101001110100100001010010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
