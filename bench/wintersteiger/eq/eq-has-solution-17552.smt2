(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1939546694866660647704748043906874954700469970703125p-752 {+ 873494177226917 -752 (5.04001e-227)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.1939546694866660647704748043906874954700469970703125p-752 = +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100001111 #b0011000110100111000000110110001001011010000010100101)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
