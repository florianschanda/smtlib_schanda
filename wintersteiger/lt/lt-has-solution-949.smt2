(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1748820170867322332242110860534012317657470703125p453 {- 787598586985608 453 (-2.73264e+136)}
; Y = -1.37068644759583957437598655815236270427703857421875p349 {- 1669423347263916 349 (-1.57183e+105)}
; -1.1748820170867322332242110860534012317657470703125p453 < -1.37068644759583957437598655815236270427703857421875p349 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111000100 #b0010110011000101000100010110000000001011110010001000)))
(assert (= y (fp #b1 #b10101011100 #b0101111011100101010011101001100101111110100110101100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
