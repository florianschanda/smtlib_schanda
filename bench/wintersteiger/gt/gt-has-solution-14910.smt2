(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9647360849387542902633185804006643593311309814453125p147 {+ 4344785072641045 147 (3.50521e+044)}
; Y = -1.222655846794993284021302315522916615009307861328125p855 {- 1002752788657794 855 (-2.93731e+257)}
; 1.9647360849387542902633185804006643593311309814453125p147 > -1.222655846794993284021302315522916615009307861328125p855 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010010010 #b1111011011111000111100011010111000010101010000010101)))
(assert (= y (fp #b1 #b11101010110 #b0011100011111111111110010011110000111111011010000010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
