(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.1719432840643329019059137863223440945148468017578125p795 {+ 774363710040989 795 (2.44204e+239)}
; +oo M 1.1719432840643329019059137863223440945148468017578125p795 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b11100011010 #b0010110000000100011110011001110111010010101110011101)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
