(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4394004406618281510787937804707325994968414306640625p-801 {- 1978883660831041 -801 (-1.07933e-241)}
; Y = -1.43498946311198860570357282995246350765228271484375p-997 {- 1959018383981244 -997 (-1.07138e-300)}
; -1.4394004406618281510787937804707325994968414306640625p-801 < -1.43498946311198860570357282995246350765228271484375p-997 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011011110 #b0111000001111100100011000001101001111101100101000001)))
(assert (= y (fp #b1 #b00000011010 #b0110111101011011011110000010111000101011101010111100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
