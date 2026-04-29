(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.759358718265297216731823937152512371540069580078125p922 {- 3419847640620130 922 (-6.2375e+277)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.759358718265297216731823937152512371540069580078125p922 m -oo == -oo
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
(assert (= x (fp #b1 #b11110011001 #b1100001001100101010101010011110011100001110001100010)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
