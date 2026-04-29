(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4334675681554698289943416966707445681095123291015625p-163 {+ 1952164378422169 -163 (1.22602e-049)}
; Y = 1.55529187362554655038593409699387848377227783203125p960 {+ 2500812275141876 960 (1.51568e+289)}
; 1.4334675681554698289943416966707445681095123291015625p-163 > 1.55529187362554655038593409699387848377227783203125p960 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101011100 #b0110111011110111101110110000010100011010101110011001)))
(assert (= y (fp #b0 #b11110111111 #b1000111000100111100110111011010011110100110011110100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
