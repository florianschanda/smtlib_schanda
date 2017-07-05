(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0665985701551685682630932205938734114170074462890625p-255 {+ 299933295734225 -255 (1.84227e-077)}
; Y = -1.4154522232667148262663658897508867084980010986328125p861 {- 1871030477894221 861 (-2.17631e+259)}
; 1.0665985701551685682630932205938734114170074462890625p-255 / -1.4154522232667148262663658897508867084980010986328125p861 == -zero
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
(assert (= x (fp #b0 #b01100000000 #b0001000100001100100110101001100011000110110111010001)))
(assert (= y (fp #b1 #b11101011100 #b0110101001011011000100111010111111111011001001001101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
