(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2034946533800405799041755017242394387722015380859375p1019 {- 916458445134239 1019 (-6.76098e+306)}
; Y = -1.4383283040686103415595198384835384786128997802734375p-421 {- 1974055186869335 -421 (-2.65601e-127)}
; -1.2034946533800405799041755017242394387722015380859375p1019 M -1.4383283040686103415595198384835384786128997802734375p-421 == -1.4383283040686103415595198384835384786128997802734375p-421
; [HW: -1.4383283040686103415595198384835384786128997802734375p-421] 

; mpf : - 1974055186869335 -421
; mpfd: - 1974055186869335 -421 (-2.65601e-127) class: Neg. norm. non-zero
; hwf : - 1974055186869335 -421 (-2.65601e-127) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111111010 #b0011010000011000001110011100000100101101100110011111)))
(assert (= y (fp #b1 #b01001011010 #b0111000000110110010010001010001011100010110001010111)))
(assert (= r (fp #b1 #b01001011010 #b0111000000110110010010001010001011100010110001010111)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
