(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0140773665433044925521244294941425323486328125p676 {- 63398822718784 676 (-3.17942e+203)}
; Y = -1.4758906334855124153904171180329285562038421630859375p926 {- 2143220879634463 926 (-8.37202e+278)}
; -1.0140773665433044925521244294941425323486328125p676 > -1.4758906334855124153904171180329285562038421630859375p926 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010100011 #b0000001110011010100100110000010011101010110101000000)))
(assert (= y (fp #b1 #b11110011101 #b0111100111010011111101111111001101001011000000011111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
