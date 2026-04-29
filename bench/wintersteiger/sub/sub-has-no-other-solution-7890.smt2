(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.945500854280191926903853527619503438472747802734375p-418 {- 4258157295014758 -418 (-2.87404e-126)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.945500854280191926903853527619503438472747802734375p-418 - +oo == -oo
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
(assert (= x (fp #b1 #b01001011101 #b1111001000001100010110000000111101111001001101100110)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
