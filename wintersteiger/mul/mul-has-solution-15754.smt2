(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4234796778917842008382876883842982351779937744140625p587 {- 1907182919552417 587 (-7.21039e+176)}
; Y = -1.0690741693847101156933376842061989009380340576171875p699 {- 311082403501907 699 (-2.81174e+210)}
; -1.4234796778917842008382876883842982351779937744140625p587 * -1.0690741693847101156933376842061989009380340576171875p699 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001001010 #b0110110001101001001010100000011100010000110110100001)))
(assert (= y (fp #b1 #b11010111010 #b0001000110101110110110000100001010000001011101010011)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
