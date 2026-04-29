(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9282690908125050821553259083884768187999725341796875p-388 {+ 4180552331482747 -388 (3.05865e-117)}
; 1.9282690908125050821553259083884768187999725341796875p-388 S == 1.3886212913579083494397536924225278198719024658203125p-194
; [HW: 1.3886212913579083494397536924225278198719024658203125p-194] 

; mpf : + 1750194702947717 -194
; mpfd: + 1750194702947717 -194 (5.5305e-059) class: Pos. norm. non-zero
; hwf : + 1750194702947717 -194 (5.5305e-059) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001111011 #b1110110110100011000010110000101011101101011001111011)))
(assert (= r (fp #b0 #b01100111101 #b0110001101111100101011110101100011101001010110000101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
