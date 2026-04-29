(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2212860111562122700235022421111352741718292236328125p510 {+ 996583597385421 510 (4.09369e+153)}
; Y = -1.4286162461783231680811923069995827972888946533203125p-132 {- 1930315966573637 -132 (-2.62395e-040)}
; 1.2212860111562122700235022421111352741718292236328125p510 > -1.4286162461783231680811923069995827972888946533203125p-132 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111111101 #b0011100010100110001100110011010011111010011011001101)))
(assert (= y (fp #b1 #b01101111011 #b0110110110111001110010110101011111011110110001000101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
