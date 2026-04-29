(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0241746135072753443040483034565113484859466552734375p-682 {+ 108872780383191 -682 (5.10407e-206)}
; Y = -1.3938366596416675857739164712256751954555511474609375p-572 {- 1773682633607055 -572 (-9.01684e-173)}
; 1.0241746135072753443040483034565113484859466552734375p-682 * -1.3938366596416675857739164712256751954555511474609375p-572 == -zero
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
(assert (= x (fp #b0 #b00101010101 #b0000011000110000010011101011011001101000001111010111)))
(assert (= y (fp #b1 #b00111000011 #b0110010011010010011110101011010100100000011110001111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
