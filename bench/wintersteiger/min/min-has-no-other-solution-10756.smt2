(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.525326227674708601256270412704907357692718505859375p732 {- 2365859003203766 732 (-3.44603e+220)}
; -oo m -1.525326227674708601256270412704907357692718505859375p732 == -oo
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
(assert (= y (fp #b1 #b11011011011 #b1000011001111011110001111001011110011000000010110110)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
