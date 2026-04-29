(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.4599733080250640870900724621606059372425079345703125p950 {- 2071535618622053 950 (-1.38944e+286)}
; +oo > -1.4599733080250640870900724621606059372425079345703125p950 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b11110110101 #b0111010111000000110011111000101100000000001001100101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
