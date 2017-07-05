(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.862366954054945455965253131580539047718048095703125p349 {+ 3883755492938482 349 (2.13567e+105)}
; Y = 1.463821503645269306304044221178628504276275634765625p245 {+ 2088866350983258 245 (8.27632e+073)}
; 1.862366954054945455965253131580539047718048095703125p349 / 1.463821503645269306304044221178628504276275634765625p245 == 1.2722636943214740146146368715562857687473297119140625p104
; [HW: 1.2722636943214740146146368715562857687473297119140625p104] 

; mpf : + 1226166672292705 104
; mpfd: + 1226166672292705 104 (2.58046e+031) class: Pos. norm. non-zero
; hwf : + 1226166672292705 104 (2.58046e+031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011100 #b1101110011000100000101001010100011010001001011110010)))
(assert (= y (fp #b0 #b10011110100 #b0111011010111101000000011000110101010110100001011010)))
(assert (= r (fp #b0 #b10001100111 #b0100010110110011000100101100111011111111101101100001)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
