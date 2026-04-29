(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3446227771036396436699078549281693994998931884765625p852 {+ 1552043010547337 852 (4.03791e+256)}
; Y = -1.6262624449980858098996350236120633780956268310546875p-688 {- 2820435313929515 -688 (-1.26635e-207)}
; 1.3446227771036396436699078549281693994998931884765625p852 / -1.6262624449980858098996350236120633780956268310546875p-688 == -oo
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
(assert (= x (fp #b0 #b11101010011 #b0101100000111001001100101100010100011101111010001001)))
(assert (= y (fp #b1 #b00101001111 #b1010000001010010101111000100111111111010110100101011)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
