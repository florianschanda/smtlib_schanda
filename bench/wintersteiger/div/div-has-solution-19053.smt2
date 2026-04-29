(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.76977062688927500033742035157047212123870849609375p483 {- 3466738708419292 483 (-4.41982e+145)}
; Y = 1.038891150470546254069859060109592974185943603515625p-610 {+ 175150170767162 -610 (2.44497e-184)}
; -1.76977062688927500033742035157047212123870849609375p483 / 1.038891150470546254069859060109592974185943603515625p-610 == -oo
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
(assert (= x (fp #b1 #b10111100010 #b1100010100001111101100000001001111101001001011011100)))
(assert (= y (fp #b0 #b00110011101 #b0000100111110100110001010011101101011111111100111010)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
