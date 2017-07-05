(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6685999930394184165294291233294643461704254150390625 186 {- 3011106679512241 186 (-1.63656e+056)}
; -1.6685999930394184165294291233294643461704254150390625 186 I == -1.6685999930394184165294291233294643461704254150390625 186
; [HW: -1.6685999930394184165294291233294643461704254150390625 186] 

; mpf : - 3011106679512241 186
; mpfd: - 3011106679512241 186 (-1.63656e+056) class: Neg. norm. non-zero
; hwf : - 3011106679512241 186 (-1.63656e+056) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111001 #b1010101100101001010111101000000000110101110010110001)))
(assert (= r (fp #b1 #b10010111001 #b1010101100101001010111101000000000110101110010110001)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
