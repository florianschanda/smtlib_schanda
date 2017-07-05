(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8899306514644671484148830131744034588336944580078125p491 {- 4007891350320957 491 (-1.2083e+148)}
; Y = -1.9794761075862947752312948068720288574695587158203125p-191 {- 4411168233143941 -191 (-6.30697e-058)}
; -1.8899306514644671484148830131744034588336944580078125p491 > -1.9794761075862947752312948068720288574695587158203125p-191 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111101010 #b1110001111010010011111101100001110111111011100111101)))
(assert (= y (fp #b1 #b01101000000 #b1111101010111110111100100011100101001011111010000101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
