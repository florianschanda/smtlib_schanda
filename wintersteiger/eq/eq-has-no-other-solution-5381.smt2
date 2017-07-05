(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3727673347975148931965350129758007824420928955078125p-471 {- 1678794830089981 -471 (-2.25148e-142)}
; Y = 1.5775989108532517679606144156423397362232208251953125p-321 {+ 2601274239688309 -321 (3.6929e-097)}
; -1.3727673347975148931965350129758007824420928955078125p-471 = 1.5775989108532517679606144156423397362232208251953125p-321 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000101000 #b0101111101101101101011100001011111111000111011111101)))
(assert (= y (fp #b0 #b01010111110 #b1001001111011101100001011011000001010001111001110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
