(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7377291318054854940555742359720170497894287109375p-625 {+ 3322436643099544 -625 (1.24806e-188)}
; Y = 1.367632655183118384201179651427082717418670654296875p-358 {+ 1655670288891918 -358 (2.32933e-108)}
; 1.7377291318054854940555742359720170497894287109375p-625 = 1.367632655183118384201179651427082717418670654296875p-358 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110001110 #b1011110011011011110100001111111001101001001110011000)))
(assert (= y (fp #b0 #b01010011001 #b0101111000011101001011000111011011110100000000001110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
