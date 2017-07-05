(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1041444522687895446466654902906157076358795166015625p373 {- 469024916430425 373 (-2.12429e+112)}
; Y = 1.4690338733191652398346604968537576496601104736328125p-142 {+ 2112340777104333 -142 (2.63495e-043)}
; -1.1041444522687895446466654902906157076358795166015625p373 > 1.4690338733191652398346604968537576496601104736328125p-142 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101110100 #b0001101010101001001101011111100010001101111001011001)))
(assert (= y (fp #b0 #b01101110001 #b0111100000010010100110101001101010011111001111001101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
