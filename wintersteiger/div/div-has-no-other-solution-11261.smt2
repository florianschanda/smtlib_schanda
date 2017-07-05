(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.9287466549494227674443891373812220990657806396484375p-75 {+ 4182703089151815 -75 (5.10535e-023)}
; -oo / 1.9287466549494227674443891373812220990657806396484375p-75 == -oo
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
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b01110110100 #b1110110111000010010101110011110101000110111101000111)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
