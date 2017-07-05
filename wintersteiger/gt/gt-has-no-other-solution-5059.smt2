(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.8298887193734156841884441746515221893787384033203125p957 {+ 3737486527329093 957 (2.22911e+288)}
; +oo > 1.8298887193734156841884441746515221893787384033203125p957 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b11110111100 #b1101010001110011100101100100110100000111001101000101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
