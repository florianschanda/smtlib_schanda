(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.7671083726826293247569310551625676453113555908203125p40 {- 3454748981366277 40 (-1.94296e+012)}
; +oo < -1.7671083726826293247569310551625676453113555908203125p40 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b10000100111 #b1100010001100001001101101101110100101000111000000101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
