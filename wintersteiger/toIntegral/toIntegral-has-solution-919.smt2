(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.249242100352348838754323878674767911434173583984375 441 {+ 1122486630271878 441 (7.09373e+132)}
; 1.249242100352348838754323878674767911434173583984375 441 I == 1.249242100352348838754323878674767911434173583984375 441
; [HW: 1.249242100352348838754323878674767911434173583984375 441] 

; mpf : + 1122486630271878 441
; mpfd: + 1122486630271878 441 (7.09373e+132) class: Pos. norm. non-zero
; hwf : + 1122486630271878 441 (7.09373e+132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110111000 #b0011111111001110010101001000110111001100101110000110)))
(assert (= r (fp #b0 #b10110111000 #b0011111111001110010101001000110111001100101110000110)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
