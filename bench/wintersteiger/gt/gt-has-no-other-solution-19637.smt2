(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.7026562783145691160058277091593481600284576416015625p794 {+ 3164482553187033 794 (1.77396e+239)}
; -oo > 1.7026562783145691160058277091593481600284576416015625p794 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b11100011001 #b1011001111100001010010000010011110110000101011011001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
