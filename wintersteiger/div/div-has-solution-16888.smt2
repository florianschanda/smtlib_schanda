(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8762477509381338958149854079238139092922210693359375p-80 {+ 3946269044609215 -80 (1.552e-024)}
; Y = -zero {- 0 -1023 (-0)}
; 1.8762477509381338958149854079238139092922210693359375p-80 / -zero == -oo
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
(assert (= x (fp #b0 #b01110101111 #b1110000001010001110001011100100101111001000010111111)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
