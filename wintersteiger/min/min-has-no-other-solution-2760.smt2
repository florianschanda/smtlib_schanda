(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8296934530969000132216706333565525710582733154296875p-914 {- 3736607126198939 -914 (-1.32118e-275)}
; Y = -1.8783014818491665653965583260287530720233917236328125p-405 {- 3955518226374861 -405 (-2.27309e-122)}
; -1.8296934530969000132216706333565525710582733154296875p-914 m -1.8783014818491665653965583260287530720233917236328125p-405 == -1.8783014818491665653965583260287530720233917236328125p-405
; [HW: -1.8783014818491665653965583260287530720233917236328125p-405] 

; mpf : - 3955518226374861 -405
; mpfd: - 3955518226374861 -405 (-2.27309e-122) class: Neg. norm. non-zero
; hwf : - 3955518226374861 -405 (-2.27309e-122) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001101101 #b1101010001100110110010100100011011000001101010011011)))
(assert (= y (fp #b1 #b01001101010 #b1110000011011000010111011010110010010010000011001101)))
(assert (= r (fp #b1 #b01001101010 #b1110000011011000010111011010110010010010000011001101)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
