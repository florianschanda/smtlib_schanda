(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.723181577181517099006669013760983943939208984375p553 {- 3256920281515888 553 (-5.08064e+166)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.723181577181517099006669013760983943939208984375p553 m -oo == -oo
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
(assert (= x (fp #b1 #b11000101000 #b1011100100100010011011011000011100010000011101110000)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
