(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.892843072542481852593709845677949488162994384765625p-392 {+ 4021007728802650 -392 (1.87653e-118)}
; Y = -1.98176962780626553239926579408347606658935546875p731 {- 4421497329951968 731 (-2.23862e+220)}
; 1.892843072542481852593709845677949488162994384765625p-392 = -1.98176962780626553239926579408347606658935546875p731 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001110111 #b1110010010010001010111010001010100000111101101011010)))
(assert (= y (fp #b1 #b11011011010 #b1111101101010101010000010001101110100010010011100000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
