(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.037608676481440728167626730282790958881378173828125p402 {- 169374421387714 402 (-1.07175e+121)}
; -oo < -1.037608676481440728167626730282790958881378173828125p402 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b10110010001 #b0000100110100000101110001110001110001000100111000010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
