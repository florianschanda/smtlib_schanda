(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.2337540370225303920648229905054904520511627197265625p358 {+ 1052734594031017 358 (7.24381e+107)}
; +zero - 1.2337540370225303920648229905054904520511627197265625p358 == -1.2337540370225303920648229905054904520511627197265625p358
; [HW: -1.2337540370225303920648229905054904520511627197265625p358] 

; mpf : - 1052734594031017 358
; mpfd: - 1052734594031017 358 (-7.24381e+107) class: Neg. norm. non-zero
; hwf : - 1052734594031017 358 (-7.24381e+107) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10101100101 #b0011101111010111010011011111100001010001110110101001)))
(assert (= r (fp #b1 #b10101100101 #b0011101111010111010011011111100001010001110110101001)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
