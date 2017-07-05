(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.56371247076077679594163782894611358642578125p767 {+ 2538735273262336 767 (1.21385e+231)}
; Y = -1.07791793210960928917074852506630122661590576171875p-655 {- 350911170014316 -655 (-7.21005e-198)}
; 1.56371247076077679594163782894611358642578125p767 / -1.07791793210960928917074852506630122661590576171875p-655 == -oo
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
(assert (= x (fp #b0 #b11011111110 #b1001000001001111011101011110001001000011110100000000)))
(assert (= y (fp #b1 #b00101110000 #b0001001111110010011011011111101000101110110001101100)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
