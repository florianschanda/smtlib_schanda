(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8891498896475005242479028311208821833133697509765625p745 {- 4004375111693001 745 (-3.49634e+224)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.8891498896475005242479028311208821833133697509765625p745 > +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011101000 #b1110001110011111010100111100000101000111001011001001)))
(assert (= y (_ +oo 11 53)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
