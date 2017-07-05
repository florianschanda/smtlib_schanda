(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7334566553432362301379043856286443769931793212890625p-965 {+ 3303195119696209 -965 (5.55862e-291)}
; Y = -1.0044468296328667999972594770952127873897552490234375p-277 {- 20026740277559 -277 (-4.13636e-084)}
; 1.7334566553432362301379043856286443769931793212890625p-965 * -1.0044468296328667999972594770952127873897552490234375p-277 == -zero
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
(assert (= x (fp #b0 #b00000111010 #b1011101111000011110100001011101110111011100101010001)))
(assert (= y (fp #b1 #b01011101010 #b0000000100100011011011010110101111011000000100110111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
