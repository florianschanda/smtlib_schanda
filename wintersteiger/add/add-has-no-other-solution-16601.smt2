(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.56900723413362275238114307285286486148834228515625p838 {+ 2562580767615300 838 (2.87582e+252)}
; -oo + 1.56900723413362275238114307285286486148834228515625p838 == -oo
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
(assert (= y (fp #b0 #b11101000101 #b1001000110101010011101010100010111001010100101000100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
