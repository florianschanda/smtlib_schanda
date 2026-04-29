(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.18848527277556481607234672992490231990814208984375p-821 {- 848862204236860 -821 (-8.49899e-248)}
; Y = 1.732837017290668857327773366705514490604400634765625p-403 {+ 3300404517993562 -403 (8.38821e-122)}
; -1.18848527277556481607234672992490231990814208984375p-821 = 1.732837017290668857327773366705514490604400634765625p-403 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011001010 #b0011000001000000100100100010001001011001010000111100)))
(assert (= y (fp #b0 #b01001101100 #b1011101110011011001101001110111010001111110001011010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
