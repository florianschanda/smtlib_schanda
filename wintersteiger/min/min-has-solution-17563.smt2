(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.7109502125940594385866688753594644367694854736328125p-58 {- 3201835112517581 -58 (-5.93605e-018)}
; +zero m -1.7109502125940594385866688753594644367694854736328125p-58 == -1.7109502125940594385866688753594644367694854736328125p-58
; [HW: -1.7109502125940594385866688753594644367694854736328125p-58] 

; mpf : - 3201835112517581 -58
; mpfd: - 3201835112517581 -58 (-5.93605e-018) class: Neg. norm. non-zero
; hwf : - 3201835112517581 -58 (-5.93605e-018) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01111000101 #b1011011000000000110101010100100000101100111111001101)))
(assert (= r (fp #b1 #b01111000101 #b1011011000000000110101010100100000101100111111001101)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
