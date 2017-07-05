(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.337815235844479477833601777092553675174713134765625p-134 {- 1521384570269274 -134 (-6.14295e-041)}
; Y = -1.5888683556457749990187267030705697834491729736328125p97 {- 2652027307056589 97 (-2.51766e+029)}
; -1.337815235844479477833601777092553675174713134765625p-134 + -1.5888683556457749990187267030705697834491729736328125p97 == -1.5888683556457749990187267030705697834491729736328125p97
; [HW: -1.5888683556457749990187267030705697834491729736328125p97] 

; mpf : - 2652027307056589 97
; mpfd: - 2652027307056589 97 (-2.51766e+029) class: Neg. norm. non-zero
; hwf : - 2652027307056589 97 (-2.51766e+029) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101111001 #b0101011001111011000011110010111000001010111001011010)))
(assert (= y (fp #b1 #b10001100000 #b1001011011000000000100111001100100100101110111001101)))
(assert (= r (fp #b1 #b10001100000 #b1001011011000000000100111001100100100101110111001101)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
