(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.9224925295261570123983574376325123012065887451171875p-762 {- 4154537012226067 -762 (-7.92516e-230)}
; +oo - -1.9224925295261570123983574376325123012065887451171875p-762 == +oo
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
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b00100000101 #b1110110000101000011110000110110100011110100000010011)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
