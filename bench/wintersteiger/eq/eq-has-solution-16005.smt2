(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2796745279828634078711502297664992511272430419921875p-375 {+ 1259542100008643 -375 (1.66284e-113)}
; Y = -1.8162335603347019574727028157212771475315093994140625p528 {- 3675989158170657 528 (-1.59591e+159)}
; 1.2796745279828634078711502297664992511272430419921875p-375 = -1.8162335603347019574727028157212771475315093994140625p528 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010001000 #b0100011110011000101111111111011100110101111011000011)))
(assert (= y (fp #b1 #b11000001111 #b1101000011110100101011101011111110001001000000100001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
