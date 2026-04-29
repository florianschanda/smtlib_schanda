(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.213105723733376439810172087163664400577545166015625p14 {- 959742857996154 14 (-19875.5)}
; -oo < -1.213105723733376439810172087163664400577545166015625p14 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b10000001101 #b0011011010001110000110001100001000000110011101111010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
