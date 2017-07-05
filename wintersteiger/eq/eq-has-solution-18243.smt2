(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.1906142307522940004815836800844408571720123291015625p108 {+ 858450178587545 108 (3.86376e+032)}
; -oo = 1.1906142307522940004815836800844408571720123291015625p108 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b10001101011 #b0011000011001100000110000001111100111011101110011001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
