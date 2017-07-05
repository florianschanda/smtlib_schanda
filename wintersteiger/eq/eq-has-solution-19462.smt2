(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9007631118342118714537036794354207813739776611328125p862 {- 4056676414805645 862 (-5.845e+259)}
; Y = 1.9440213512212569657577887483057565987110137939453125p555 {+ 4251494205589845 555 (2.29271e+167)}
; -1.9007631118342118714537036794354207813739776611328125p862 = 1.9440213512212569657577887483057565987110137939453125p555 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101011101 #b1110011010011000011010010100101011000101011010001101)))
(assert (= y (fp #b0 #b11000101010 #b1111000110101011011000100001111000111000100101010101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
