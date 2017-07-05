(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.61100137200179727159365938859991729259490966796875p-66 {- 2751705551270156 -66 (-2.18331e-020)}
; +oo > -1.61100137200179727159365938859991729259490966796875p-66 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b01110111101 #b1001110001101010100101011111111010001111000100001100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
