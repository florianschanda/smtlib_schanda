(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.887985961957292513346828854992054402828216552734375p100 {- 3999133247381094 100 (-2.39331e+030)}
; +oo < -1.887985961957292513346828854992054402828216552734375p100 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b10001100011 #b1110001101010011000011000100100111101001111001100110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
