(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.808722309420752960562595035298727452754974365234375p743 {- 3642161491353510 743 (-8.36871e+223)}
; Y = -1.3031688272749850643350555401411838829517364501953125p-311 {- 1365351017545973 -311 (-3.12372e-094)}
; -1.808722309420752960562595035298727452754974365234375p743 / -1.3031688272749850643350555401411838829517364501953125p-311 == +oo
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
(assert (= x (fp #b1 #b11011100110 #b1100111100001000011011001101111010000001111110100110)))
(assert (= y (fp #b1 #b01011001000 #b0100110110011100011110001110011001010000000011110101)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
