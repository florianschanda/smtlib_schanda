(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.448492866523647837340149635565467178821563720703125p110 {+ 2019832306554226 110 (1.88025e+033)}
; Y = -1.7810110366582876384455857987632043659687042236328125p181 {- 3517361013666509 181 (-5.45878e+054)}
; 1.448492866523647837340149635565467178821563720703125p110 / -1.7810110366582876384455857987632043659687042236328125p181 == -1.6265961711741621087412568158470094203948974609375p-72
; [HW: -1.6265961711741621087412568158470094203948974609375p-72] 

; mpf : - 2821938283011736 -72
; mpfd: - 2821938283011736 -72 (-3.44445e-022) class: Neg. norm. non-zero
; hwf : - 2821938283011736 -72 (-3.44445e-022) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001101101 #b0111001011010000011011011011001000110101010101110010)))
(assert (= y (fp #b1 #b10010110100 #b1100011111110000010101101101110001000011001011001101)))
(assert (= r (fp #b1 #b01110110111 #b1010000001101000100110110100111011111101111010011000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
