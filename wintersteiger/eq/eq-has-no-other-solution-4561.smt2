(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.72924998854837586037547225714661180973052978515625p-969 {- 3284249976686404 -969 (-3.46571e-292)}
; Y = -1.0357686521451003880400776324677281081676483154296875p-281 {- 161087688472219 -281 (-2.66584e-085)}
; -1.72924998854837586037547225714661180973052978515625p-969 = -1.0357686521451003880400776324677281081676483154296875p-281 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000110110 #b1011101010110000001000001001001101101100011101000100)))
(assert (= y (fp #b1 #b01011100110 #b0000100100101000001000100110011100101111011010011011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
