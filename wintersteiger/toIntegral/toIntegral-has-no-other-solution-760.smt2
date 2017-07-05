(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9968789657275411997261471697129309177398681640625 961 {- 4489543738584040 961 (-3.89204e+289)}
; -1.9968789657275411997261471697129309177398681640625 961 I == -1.9968789657275411997261471697129309177398681640625 961
; [HW: -1.9968789657275411997261471697129309177398681640625 961] 

; mpf : - 4489543738584040 961
; mpfd: - 4489543738584040 961 (-3.89204e+289) class: Neg. norm. non-zero
; hwf : - 4489543738584040 961 (-3.89204e+289) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111000000 #b1111111100110011011101011011101111011110101111101000)))
(assert (= r (fp #b1 #b11111000000 #b1111111100110011011101011011101111011110101111101000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
