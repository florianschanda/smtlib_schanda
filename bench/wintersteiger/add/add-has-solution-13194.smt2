(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.44915495425367790716109084314666688442230224609375p-199 {+ 2022814084608476 -199 (1.80362e-060)}
; +oo + 1.44915495425367790716109084314666688442230224609375p-199 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b01100111000 #b0111001011111011110100011010111101011011000111011100)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
