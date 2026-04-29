(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9473695087512028489840076872496865689754486083984375p-357 {- 4266572966594087 -357 (-6.63346e-108)}
; Y = -1.5602973018007217920199991567642427980899810791015625p772 {- 2523354719606425 772 (-3.87582e+232)}
; -1.9473695087512028489840076872496865689754486083984375p-357 < -1.5602973018007217920199991567642427980899810791015625p772 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010011010 #b1111001010000110110011101110000101010000011000100111)))
(assert (= y (fp #b1 #b11100000011 #b1000111101101111101001001101101101000101011010011001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
