(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.637372535455801969561662190244533121585845947265625 47 {- 2870470713174938 47 (-2.3044e+014)}
; -1.637372535455801969561662190244533121585845947265625 47 I == -1.63737253545580330182929174043238162994384765625 47
; [HW: -1.63737253545580330182929174043238162994384765625 47] 

; mpf : - 2870470713174944 47
; mpfd: - 2870470713174944 47 (-2.3044e+014) class: Neg. norm. non-zero
; hwf : - 2870470713174944 47 (-2.3044e+014) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000101110 #b1010001100101010110110001011001100100110101110011010)))
(assert (= r (fp #b1 #b10000101110 #b1010001100101010110110001011001100100110101110100000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
