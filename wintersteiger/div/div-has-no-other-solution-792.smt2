(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.976849578032362497737040030187927186489105224609375p906 {- 4399339395623574 906 (-1.06942e+273)}
; Y = -1.0224019478242791780786546951276250183582305908203125p-843 {- 100889403873797 -843 (-1.74315e-254)}
; -1.976849578032362497737040030187927186489105224609375p906 / -1.0224019478242791780786546951276250183582305908203125p-843 == +oo
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
(assert (= x (fp #b1 #b11110001001 #b1111101000010010110100000101111011000010101010010110)))
(assert (= y (fp #b1 #b00010110100 #b0000010110111100001000100101000101000101101000000101)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
