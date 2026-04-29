(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1628399955820827305075226831831969320774078369140625p1002 {- 733366143424481 1002 (-4.98397e+301)}
; Y = -oo {- 0 1024 (-1.#INF)}
; Z = 1.8173033807226810498747227029525674879550933837890625p-301 {+ 3680807200871313 -301 (4.46066e-091)}
; -1.1628399955820827305075226831831969320774078369140625p1002 x -oo 1.8173033807226810498747227029525674879550933837890625p-301 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111101001 #b0010100110101111111000011100011110000001011111100001)))
(assert (= y (_ -oo 11 53)))
(assert (= z (fp #b0 #b01011010010 #b1101000100111010110010110101101100011101001110010001)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
