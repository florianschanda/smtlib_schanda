(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.596149149379002540882765970309264957904815673828125p677 {+ 2684817087000514 677 (1.00088e+204)}
; -oo > 1.596149149379002540882765970309264957904815673828125p677 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b11010100100 #b1001100010011101001110110000110000011110111111000010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
