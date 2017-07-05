(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4770462878106263016064758630818687379360198974609375p-992 {+ 2148425484022415 -992 (3.52889e-299)}
; Y = -1.8265800730094559067850923383957706391811370849609375p764 {- 3722585708797263 764 (-1.77237e+230)}
; 1.4770462878106263016064758630818687379360198974609375p-992 > -1.8265800730094559067850923383957706391811370849609375p764 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000011111 #b0111101000011111101101001001110011010011001010001111)))
(assert (= y (fp #b1 #b11011111011 #b1101001110011010110000000110110100011001110101001111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
