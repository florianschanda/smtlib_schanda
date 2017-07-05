(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.341753794990300008294070721603929996490478515625p1021 {+ 1539122263770768 1021 (3.01508e+307)}
; +oo < 1.341753794990300008294070721603929996490478515625p1021 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b11111111100 #b0101011101111101001011010011110011000100011010010000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
