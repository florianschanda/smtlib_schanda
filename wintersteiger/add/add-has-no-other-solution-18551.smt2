(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.5797250175466606147978154695010744035243988037109375p-669 {- 2610849373000495 -669 (-6.44933e-202)}
; -zero + -1.5797250175466606147978154695010744035243988037109375p-669 == -1.5797250175466606147978154695010744035243988037109375p-669
; [HW: -1.5797250175466606147978154695010744035243988037109375p-669] 

; mpf : - 2610849373000495 -669
; mpfd: - 2610849373000495 -669 (-6.44933e-202) class: Neg. norm. non-zero
; hwf : - 2610849373000495 -669 (-6.44933e-202) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00101100010 #b1001010001101000110110111101011100001001001100101111)))
(assert (= r (fp #b1 #b00101100010 #b1001010001101000110110111101011100001001001100101111)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
