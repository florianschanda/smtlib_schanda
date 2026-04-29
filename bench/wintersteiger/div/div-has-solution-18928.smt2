(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9545026911590046569955347877112217247486114501953125p94 {- 4298697964227829 94 (-3.87129e+028)}
; Y = -1.7158544016770724827125604861066676676273345947265625p-980 {- 3223921616644393 -980 (-1.67913e-295)}
; -1.9545026911590046569955347877112217247486114501953125p94 / -1.7158544016770724827125604861066676676273345947265625p-980 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001011101 #b1111010001011010010010011101001001111000110011110101)))
(assert (= y (fp #b1 #b00000101011 #b1011011101000010001110111110101111100110100100101001)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
