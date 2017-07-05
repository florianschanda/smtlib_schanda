(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2185855867853694345370740848011337220668792724609375p691 {+ 984421967195151 691 (1.25194e+208)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.2185855867853694345370740848011337220668792724609375p691 < +oo == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010110010 #b0011011111110101001110011001101010011110110000001111)))
(assert (= y (_ +oo 11 53)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
