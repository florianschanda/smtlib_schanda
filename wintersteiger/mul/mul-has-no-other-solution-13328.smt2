(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.699593531546682800836833848734386265277862548828125p59 {- 3150689167984450 59 (-9.79749e+017)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.699593531546682800836833848734386265277862548828125p59 * +oo == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000111010 #b1011001100011000100011111100101001111100011101000010)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
