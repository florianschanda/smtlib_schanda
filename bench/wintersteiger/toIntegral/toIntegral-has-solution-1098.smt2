(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9784673342116627647868654094054363667964935302734375 640 {- 4406625121749847 640 (-9.02664e+192)}
; -1.9784673342116627647868654094054363667964935302734375 640 I == -1.9784673342116627647868654094054363667964935302734375 640
; [HW: -1.9784673342116627647868654094054363667964935302734375 640] 

; mpf : - 4406625121749847 640
; mpfd: - 4406625121749847 640 (-9.02664e+192) class: Neg. norm. non-zero
; hwf : - 4406625121749847 640 (-9.02664e+192) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001111111 #b1111101001111100110101011101000010100100101101010111)))
(assert (= r (fp #b1 #b11001111111 #b1111101001111100110101011101000010100100101101010111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
