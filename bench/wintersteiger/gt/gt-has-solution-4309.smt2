(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1878978967393514221129180441494099795818328857421875p-729 {- 846216897739043 -729 (-4.20642e-220)}
; Y = -1.3829919197684483744836825280799530446529388427734375p137 {- 1724842267155095 137 (-2.40951e+041)}
; -1.1878978967393514221129180441494099795818328857421875p-729 > -1.3829919197684483744836825280799530446529388427734375p137 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100100110 #b0011000000011010000100111001100101111011100100100011)))
(assert (= y (fp #b1 #b10010001000 #b0110001000001011110000100010101000001001101010010111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
