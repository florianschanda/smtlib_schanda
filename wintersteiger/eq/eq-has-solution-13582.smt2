(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5015397315961698243569344413117505609989166259765625p6 {- 2258734148328009 6 (-96.0985)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.5015397315961698243569344413117505609989166259765625p6 = +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000000101 #b1000000001100100111010000110100011011001101001001001)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
