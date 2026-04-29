(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5892436049724174562669531951542012393474578857421875p-444 {+ 2653717279784227 -444 (3.49842e-134)}
; Y = -1.74874465093064923593146886560134589672088623046875p-697 {- 3372046130926924 -697 (-2.65962e-210)}
; 1.5892436049724174562669531951542012393474578857421875p-444 * -1.74874465093064923593146886560134589672088623046875p-697 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001000011 #b1001011011011000101010110011110010111011110100100011)))
(assert (= y (fp #b1 #b00101000110 #b1011111110101101101110101011110011001101010101001100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
