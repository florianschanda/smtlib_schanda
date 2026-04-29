(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.235205139226546844355425491812638938426971435546875p289 {- 1059269777376302 289 (-1.22859e+087)}
; Y = -1.6189310078932599434864414433832280337810516357421875p1019 {- 2787417456516131 1019 (-9.09482e+306)}
; -1.235205139226546844355425491812638938426971435546875p289 * -1.6189310078932599434864414433832280337810516357421875p1019 == +oo
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
(assert (= x (fp #b1 #b10100100000 #b0011110000110110011001110110110011010100010000101110)))
(assert (= y (fp #b1 #b11111111010 #b1001111001110010010000110011010101100001110000100011)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
