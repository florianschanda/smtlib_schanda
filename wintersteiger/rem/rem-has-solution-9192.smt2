(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1793226973800312595841432994347997009754180908203125p118 {- 807597633099781 118 (-3.91897e+035)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.1793226973800312595841432994347997009754180908203125p118 % +oo == -1.1793226973800312595841432994347997009754180908203125p118
; [HW: -1.1793226973800312595841432994347997009754180908203125p118] 

; mpf : - 807597633099781 118
; mpfd: - 807597633099781 118 (-3.91897e+035) class: Neg. norm. non-zero
; hwf : - 807597633099781 118 (-3.91897e+035) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001110101 #b0010110111101000000101111010000010101101100000000101)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b10001110101 #x2de817a0ad805)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
