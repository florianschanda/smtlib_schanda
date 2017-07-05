(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3144915624947566268332366234972141683101654052734375 398 {- 1416344083662551 398 (-8.48586e+119)}
; -1.3144915624947566268332366234972141683101654052734375 398 I == -1.3144915624947566268332366234972141683101654052734375 398
; [HW: -1.3144915624947566268332366234972141683101654052734375 398] 

; mpf : - 1416344083662551 398
; mpfd: - 1416344083662551 398 (-8.48586e+119) class: Neg. norm. non-zero
; hwf : - 1416344083662551 398 (-8.48586e+119) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110001101 #b0101000010000010100001001101111111001000011011010111)))
(assert (= r (fp #b1 #b10110001101 #b0101000010000010100001001101111111001000011011010111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
