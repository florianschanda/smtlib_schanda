(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.34416850535460863369507933384738862514495849609375p891 {- 1549997152467676 891 (-2.21912e+268)}
; Y = -1.684318229730008997790946523309685289859771728515625p-283 {- 3081895324414906 -283 (-1.08377e-085)}
; -1.34416850535460863369507933384738862514495849609375p891 % -1.684318229730008997790946523309685289859771728515625p-283 == -1.450768578341666614761606979300267994403839111328125p-283
; [HW: -1.450768578341666614761606979300267994403839111328125p-283] 

; mpf : - 2030081201449858 -283
; mpfd: - 2030081201449858 -283 (-9.33489e-086) class: Neg. norm. non-zero
; hwf : - 2030081201449858 -283 (-9.33489e-086) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101111010 #b0101100000011011011011010101101011001111101011011100)))
(assert (= y (fp #b1 #b01011100100 #b1010111100101111011110101100000010111111001110111010)))
(assert (= r (fp #b0 #b01011100001 #xde4f4795a41c0)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
