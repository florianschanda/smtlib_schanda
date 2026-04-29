(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.254829639511855443601007209508679807186126708984375p-544 {- 1147650669548550 -544 (-2.17905e-164)}
; -oo < -1.254829639511855443601007209508679807186126708984375p-544 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b00111011111 #b0100000100111100100000111110011111000001010000000110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
