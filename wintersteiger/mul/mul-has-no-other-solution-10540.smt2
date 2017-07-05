(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.972214642034800125003357607056386768817901611328125p-473 {+ 4378465499592066 -473 (8.0866e-143)}
; Y = 1.9764314261205233602680664262152276933193206787109375p-958 {+ 4397456206829231 -958 (8.11234e-289)}
; 1.972214642034800125003357607056386768817901611328125p-473 * 1.9764314261205233602680664262152276933193206787109375p-958 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000100110 #b1111100011100011000011110000110000111011010110000010)))
(assert (= y (fp #b0 #b00001000001 #b1111100111110111011010001111000111111001011010101111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
