(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 0.1018242772559962983081049969769082963466644287109375p-1022 {+ 458575777107375 -1023 (2.26567e-309)}
; Y = -1.4664779803631382559814255728269927203655242919921875p-338 {- 2100830058539971 -338 (-2.61901e-102)}
; 0.1018242772559962983081049969769082963466644287109375p-1022 * -1.4664779803631382559814255728269927203655242919921875p-338 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0001101000010001001001111110010011000000110110101111)))
(assert (= y (fp #b1 #b01010101101 #b0111011101101011000110011101010111110110101111000011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
