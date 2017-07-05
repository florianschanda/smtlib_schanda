(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.05274003502540569598977526766248047351837158203125p-471 {- 237520002087924 -471 (-1.72661e-142)}
; Y = -1.3008838376376161694025768156279809772968292236328125p-1006 {- 1355060339066573 -1006 (-1.89698e-303)}
; -1.05274003502540569598977526766248047351837158203125p-471 - -1.3008838376376161694025768156279809772968292236328125p-1006 == -1.05274003502540569598977526766248047351837158203125p-471
; [HW: -1.05274003502540569598977526766248047351837158203125p-471] 

; mpf : - 237520002087924 -471
; mpfd: - 237520002087924 -471 (-1.72661e-142) class: Neg. norm. non-zero
; hwf : - 237520002087924 -471 (-1.72661e-142) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000101000 #b0000110110000000010111101111010110011111101111110100)))
(assert (= y (fp #b1 #b00000010001 #b0100110100000110101110010010001010001100011011001101)))
(assert (= r (fp #b1 #b01000101000 #b0000110110000000010111101111010110011111101111110100)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
