(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8645283551871962846036012706463225185871124267578125p384 {- 3893489578272285 384 (-7.34662e+115)}
; Y = 1.467044268208326673885721902479417622089385986328125p-408 {+ 2103380392268546 -408 (2.21924e-123)}
; Z = -1.1801549195648350920606617364683188498020172119140625p976 {- 811345628621153 976 (-7.53728e+293)}
; -1.8645283551871962846036012706463225185871124267578125p384 x 1.467044268208326673885721902479417622089385986328125p-408 -1.1801549195648350920606617364683188498020172119140625p976 == -1.1801549195648350920606617364683188498020172119140625p976
; [HW: -1.1801549195648350920606617364683188498020172119140625p976] 

; mpf : - 811345628621153 976
; mpfd: - 811345628621153 976 (-7.53728e+293) class: Neg. norm. non-zero
; hwf : - 811345628621153 976 (-7.53728e+293) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101111111 #b1101110101010001101110101111001111111110011000011101)))
(assert (= y (fp #b0 #b01001100111 #b0111011110010000001101101001000110111101001100000010)))
(assert (= z (fp #b1 #b11111001111 #b0010111000011110101000011111111110111110100101100001)))
(assert (= r (fp #b1 #b11111001111 #b0010111000011110101000011111111110111110100101100001)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
