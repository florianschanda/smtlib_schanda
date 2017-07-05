(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.795277343988305407407324310042895376682281494140625p-84 {- 3581610750041930 -84 (-9.28137e-026)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.795277343988305407407324310042895376682281494140625p-84 = +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110101011 #b1100101110010111010010111100011110101101111101001010)))
(assert (= y (_ +oo 11 53)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
