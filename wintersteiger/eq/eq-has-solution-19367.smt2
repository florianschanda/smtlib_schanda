(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.9525671962213870802571591411833651363849639892578125p188 {- 4289981269947997 188 (-7.66029e+056)}
; +oo = -1.9525671962213870802571591411833651363849639892578125p188 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b10010111011 #b1111001111011011011100011001101100000011011001011101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
