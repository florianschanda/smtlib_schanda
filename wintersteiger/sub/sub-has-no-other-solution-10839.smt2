(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6154411695757480149637785871163941919803619384765625p-229 {- 2771700621969801 -229 (-1.8725e-069)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.6154411695757480149637785871163941919803619384765625p-229 - -oo == +oo
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
(assert (= x (fp #b1 #b01100011010 #b1001110110001101100011010110111111110000100110001001)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
