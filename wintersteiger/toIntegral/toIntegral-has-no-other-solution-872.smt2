(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.521509932413283028296291377046145498752593994140625 255 {- 2348671937286474 255 (-8.80894e+076)}
; -1.521509932413283028296291377046145498752593994140625 255 I == -1.521509932413283028296291377046145498752593994140625 255
; [HW: -1.521509932413283028296291377046145498752593994140625 255] 

; mpf : - 2348671937286474 255
; mpfd: - 2348671937286474 255 (-8.80894e+076) class: Neg. norm. non-zero
; hwf : - 2348671937286474 255 (-8.80894e+076) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011111110 #b1000010110000001101011001100100001000001000101001010)))
(assert (= r (fp #b1 #b10011111110 #b1000010110000001101011001100100001000001000101001010)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
