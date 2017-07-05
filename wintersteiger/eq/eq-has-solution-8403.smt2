(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4673711225768857335793882157304324209690093994140625p958 {+ 2104852413480993 958 (3.575e+288)}
; Y = 1.9949309733161026958470074532669968903064727783203125p-43 {+ 4480770760685765 -43 (2.26797e-013)}
; 1.4673711225768857335793882157304324209690093994140625p958 = 1.9949309733161026958470074532669968903064727783203125p-43 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110111101 #b0111011110100101101000100100011010010000000000100001)))
(assert (= y (fp #b0 #b01111010100 #b1111111010110011110010111101100000101011100011000101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
