(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.3138599410536853095976539407274685800075531005859375p565 {+ 1413499513575903 565 (1.58671e+170)}
; -oo + 1.3138599410536853095976539407274685800075531005859375p565 == -oo
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
(assert (= y (fp #b0 #b11000110100 #b0101000001011001001000000000011001011001100111011111)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
