(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1429047432559131802776164477108977735042572021484375p242 {+ 643585748476807 242 (8.07735e+072)}
; Y = -1.7037172492040604243612733625923283398151397705078125p321 {- 3169260741289597 321 (-7.27824e+096)}
; 1.1429047432559131802776164477108977735042572021484375p242 + -1.7037172492040604243612733625923283398151397705078125p321 == -1.7037172492040604243612733625923283398151397705078125p321
; [HW: -1.7037172492040604243612733625923283398151397705078125p321] 

; mpf : - 3169260741289597 321
; mpfd: - 3169260741289597 321 (-7.27824e+096) class: Neg. norm. non-zero
; hwf : - 3169260741289597 321 (-7.27824e+096) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011110001 #b0010010010010101011001111011111010111010001110000111)))
(assert (= y (fp #b1 #b10101000000 #b1011010000100110110100000100101011110110011001111101)))
(assert (= r (fp #b1 #b10101000000 #b1011010000100110110100000100101011110110011001111101)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
