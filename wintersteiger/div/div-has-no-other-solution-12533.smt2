(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.920642405433294896965890075080096721649169921875p961 {+ 4146204794050864 961 (3.74345e+289)}
; Y = -1.3129133966887429618708438283647410571575164794921875p-101 {- 1409236656726659 -101 (-5.17853e-031)}
; 1.920642405433294896965890075080096721649169921875p961 / -1.3129133966887429618708438283647410571575164794921875p-101 == -oo
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
(assert (= x (fp #b0 #b11111000000 #b1110101110101111001110000111111010100101100100110000)))
(assert (= y (fp #b1 #b01110011010 #b0101000000011011000101111010010101000010001010000011)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
