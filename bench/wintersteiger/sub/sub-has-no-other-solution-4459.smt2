(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.810743716857819318732936153537593781948089599609375p183 {+ 3651265101133846 183 (2.21997e+055)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.810743716857819318732936153537593781948089599609375p183 - -oo == +oo
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
(assert (= x (fp #b0 #b10010110110 #b1100111110001100111001100111010101010111100000010110)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
