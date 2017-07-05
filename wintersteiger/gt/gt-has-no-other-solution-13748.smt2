(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.94536470940900674264639746979810297489166259765625p-627 {+ 4257544153023620 -627 (3.49296e-189)}
; Y = -1.04802644266297750874628036399371922016143798828125p-668 {- 216291869280916 -668 (-8.55727e-202)}
; 1.94536470940900674264639746979810297489166259765625p-627 > -1.04802644266297750874628036399371922016143798828125p-668 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110001100 #b1111001000000011011010111110110110110100010010000100)))
(assert (= y (fp #b1 #b00101100011 #b0000110001001011011101100000000010010100101010010100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
