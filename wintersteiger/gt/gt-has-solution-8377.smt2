(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8205102476963570534707059778156690299510955810546875p-697 {+ 3695249645778987 -697 (2.76877e-210)}
; Y = 1.6668455852433632369269389528199099004268646240234375p897 {+ 3003205529215671 897 (1.76117e+270)}
; 1.8205102476963570534707059778156690299510955810546875p-697 > 1.6668455852433632369269389528199099004268646240234375p897 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101000110 #b1101001000001100111101011010011111100011100000101011)))
(assert (= y (fp #b0 #b11110000000 #b1010101010110110011001000110110000011010001010110111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
