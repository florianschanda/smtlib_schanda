(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.345055769009876112107804146944545209407806396484375p-70 {- 1553993032734918 -70 (-1.13931e-021)}
; Y = -1.1800912683645041756363980312016792595386505126953125p130 {- 811058969099061 130 (-1.60626e+039)}
; -1.345055769009876112107804146944545209407806396484375p-70 > -1.1800912683645041756363980312016792595386505126953125p130 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110111001 #b0101100001010101100100110010101100110001100011000110)))
(assert (= y (fp #b1 #b10010000001 #b0010111000011010011101100001101111101011101100110101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
