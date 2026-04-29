(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.781277986877098040707778636715374886989593505859375p189 {- 3518563250572470 189 (-1.39766e+057)}
; Y = -1.261986565531315829247205329011194407939910888671875p923 {- 1179882598902910 923 (-8.9483e+277)}
; -1.781277986877098040707778636715374886989593505859375p189 * -1.261986565531315829247205329011194407939910888671875p923 == +oo
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
(assert (= x (fp #b1 #b10010111100 #b1100100000000001110101011000101010111000110010110110)))
(assert (= y (fp #b1 #b11110011010 #b0100001100010001100011010011001011110010110001111110)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
