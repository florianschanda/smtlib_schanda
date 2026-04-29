(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4027905247050374004658124249544925987720489501953125p-119 {+ 1814007256969973 -119 (2.11068e-036)}
; Y = -1.588051696285846414724574060528539121150970458984375p-689 {- 2648349400267526 -689 (-6.18298e-208)}
; 1.4027905247050374004658124249544925987720489501953125p-119 < -1.588051696285846414724574060528539121150970458984375p-689 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110001000 #b0110011100011101010001111010001010111111001011110101)))
(assert (= y (fp #b1 #b00101001110 #b1001011010001010100011100101001111100111101100000110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
