(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.545558157837879864615615588263608515262603759765625p118 {+ 2456975516347610 118 (5.136e+035)}
; +oo = 1.545558157837879864615615588263608515262603759765625p118 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b10001110101 #b1000101110101001101100110000110111111010110011011010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
