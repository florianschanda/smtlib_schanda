(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.021723967655690845646176967420615255832672119140625p310 {- 97836052639178 310 (-2.13124e+093)}
; Y = 1.3688773351854146564932079854770563542842864990234375p-498 {+ 1661275829286455 -498 (1.67273e-150)}
; -1.021723967655690845646176967420615255832672119140625p310 > 1.3688773351854146564932079854770563542842864990234375p-498 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100110101 #b0000010110001111101100111011001010011110110111001010)))
(assert (= y (fp #b0 #b01000001101 #b0101111001101110101111101011101011011011011000110111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
