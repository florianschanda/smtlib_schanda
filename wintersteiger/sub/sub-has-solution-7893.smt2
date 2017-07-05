(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.36906565319116513279595892527140676975250244140625p-540 {- 1662123938186980 -540 (-3.80388e-163)}
; -zero - -1.36906565319116513279595892527140676975250244140625p-540 == 1.36906565319116513279595892527140676975250244140625p-540
; [HW: 1.36906565319116513279595892527140676975250244140625p-540] 

; mpf : + 1662123938186980 -540
; mpfd: + 1662123938186980 -540 (3.80388e-163) class: Pos. norm. non-zero
; hwf : + 1662123938186980 -540 (3.80388e-163) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00111100011 #b0101111001111011000101100010111010001000011011100100)))
(assert (= r (fp #b0 #b00111100011 #b0101111001111011000101100010111010001000011011100100)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
