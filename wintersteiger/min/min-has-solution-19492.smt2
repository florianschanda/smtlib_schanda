(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.1350341342912810826959457699558697640895843505859375p-720 {- 608139676876511 -720 (-2.05784e-217)}
; -oo m -1.1350341342912810826959457699558697640895843505859375p-720 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b00100101111 #b0010001010010001100110001101011010011111111011011111)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
