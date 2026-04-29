(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.49767016853228351891402780893258750438690185546875p-255 {+ 2241307185555404 -255 (2.58683e-077)}
; Y = -1.2426127902235262201457999253761954605579376220703125p-897 {- 1092630871645989 -897 (-1.17606e-270)}
; 1.49767016853228351891402780893258750438690185546875p-255 * -1.2426127902235262201457999253761954605579376220703125p-897 == -zero
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
(assert (= x (fp #b0 #b01100000000 #b0111111101100111010011111110101000001010011111001100)))
(assert (= y (fp #b1 #b00001111110 #b0011111000011011110111110010111110011001111100100101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
