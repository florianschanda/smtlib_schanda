(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.8186723804882072297317563425167463719844818115234375p-561 {- 3686972627705207 -561 (-2.4095e-169)}
; +oo = -1.8186723804882072297317563425167463719844818115234375p-561 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b00111001110 #b1101000110010100100000110101110001010101110101110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
