(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7840101419332754506541505179484374821186065673828125p-750 {+ 3530867783065389 -750 (3.01232e-226)}
; Y = 1.9760840199931768434993273331201635301113128662109375p675 {+ 4395891628723567 675 (3.09779e+203)}
; 1.7840101419332754506541505179484374821186065673828125p-750 / 1.9760840199931768434993273331201635301113128662109375p675 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100010001 #b1100100010110100111000110111111101010101111100101101)))
(assert (= y (fp #b0 #b11010100010 #b1111100111100000101001000111000000000100110101101111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
