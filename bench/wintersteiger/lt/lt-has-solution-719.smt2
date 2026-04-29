(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.93414027817723255253667957731522619724273681640625p-141 {- 4206993808710756 -141 (-6.93839e-043)}
; Y = -1.1888679949804410451719149932614527642726898193359375p536 {- 850585831816127 536 (-2.67431e+161)}
; -1.93414027817723255253667957731522619724273681640625p-141 < -1.1888679949804410451719149932614527642726898193359375p536 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110010 #b1110111100100011110100010011100010100101110001100100)))
(assert (= y (fp #b1 #b11000010111 #b0011000001011001101001110010010110110011101110111111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
