(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.46849824562710562503298206138424575328826904296875p-589 {+ 2109928524429964 -589 (7.2478e-178)}
; Y = -1.501183395141610699141665463685058057308197021484375p-597 {- 2257129351604038 -597 (-2.89419e-180)}
; 1.46849824562710562503298206138424575328826904296875p-589 > -1.501183395141610699141665463685058057308197021484375p-597 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110110010 #b0111011111101111100000000100001100110011101010001100)))
(assert (= y (fp #b1 #b00110101010 #b1000000001001101100011100001001101101110011101000110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
