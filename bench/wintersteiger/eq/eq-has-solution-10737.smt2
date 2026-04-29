(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8655497520129207256189829422510229051113128662109375p265 {+ 3898089540636015 265 (1.106e+080)}
; Y = 1.97401181221113120045629329979419708251953125p843 {+ 4386559234528512 843 (1.15781e+254)}
; 1.8655497520129207256189829422510229051113128662109375p265 = 1.97401181221113120045629329979419708251953125p843 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100001000 #b1101110110010100101010110010010111110100110101101111)))
(assert (= y (fp #b0 #b11101001010 #b1111100101011000110101101000111101011101010100000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
