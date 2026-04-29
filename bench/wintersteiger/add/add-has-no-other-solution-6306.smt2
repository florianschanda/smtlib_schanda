(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.90857767200301164933762265718542039394378662109375p595 {- 4091870065069916 595 (-2.4749e+179)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.90857767200301164933762265718542039394378662109375p595 + -oo == -oo
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
(assert (= x (fp #b1 #b11001010010 #b1110100010011000100010111101101100100000111101011100)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
