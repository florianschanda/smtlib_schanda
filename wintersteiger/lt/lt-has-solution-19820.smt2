(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.57051652330013968850153105449862778186798095703125p313 {+ 2569378001743220 313 (2.62078e+094)}
; Y = -1.86266173659824829655917710624635219573974609375p-827 {- 3885083075490656 -827 (-2.08127e-249)}
; 1.57051652330013968850153105449862778186798095703125p313 < -1.86266173659824829655917710624635219573974609375p-827 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100111000 #b1001001000001101010111101111000101100110110101110100)))
(assert (= y (fp #b1 #b00011000100 #b1101110011010111011001100100101000110011001101100000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
