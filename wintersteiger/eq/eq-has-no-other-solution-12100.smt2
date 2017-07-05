(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.760211969509193341565378432278521358966827392578125p210 {- 3423690342604194 210 (-2.89644e+063)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.760211969509193341565378432278521358966827392578125p210 = -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011010001 #b1100001010011101010000000110101100010001110110100010)))
(assert (= y (_ -oo 11 53)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
