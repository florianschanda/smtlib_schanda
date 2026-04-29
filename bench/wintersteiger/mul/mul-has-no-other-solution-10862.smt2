(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5725087763962741771450737360282801091670989990234375p-940 {- 2578350312044599 -940 (-1.69199e-283)}
; Y = 1.0991423733180878397064361706725321710109710693359375p-759 {+ 446497555531967 -759 (3.62483e-229)}
; -1.5725087763962741771450737360282801091670989990234375p-940 * 1.0991423733180878397064361706725321710109710693359375p-759 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001010011 #b1001001010001111111011110110011101001011100000110111)))
(assert (= y (fp #b0 #b00100001000 #b0001100101100001011001010000001100001100100010111111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
