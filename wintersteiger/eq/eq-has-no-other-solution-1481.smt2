(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.0402324414857726520011738102766685187816619873046875p107 {- 181190808483531 107 (-1.68787e+032)}
; -oo = -1.0402324414857726520011738102766685187816619873046875p107 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b10001101010 #b0000101001001100101011000101110001101011011011001011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
