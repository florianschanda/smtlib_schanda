(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8559210255891220864299384629703126847743988037109375p-430 {+ 3854725611901743 -430 (6.69362e-130)}
; Y = 1.0267890011157676521946768843918107450008392333984375p858 {+ 120646935442599 858 (1.97341e+258)}
; 1.8559210255891220864299384629703126847743988037109375p-430 < 1.0267890011157676521946768843918107450008392333984375p858 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001010001 #b1101101100011101101000111110110011011101001100101111)))
(assert (= y (fp #b0 #b11101011001 #b0000011011011011101001001101101110101111010010100111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
