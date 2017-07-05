(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.234555852040986057005511611350812017917633056640625p858 {- 1056345647849354 858 (-2.37272e+258)}
; -oo - -1.234555852040986057005511611350812017917633056640625p858 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b11101011001 #b0011110000001011110110100011000110011001111110001010)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
