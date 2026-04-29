(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0034805644858639794847476878203451633453369140625p-973 {- 15675068921576 -973 (-1.25696e-293)}
; Y = -zero {- 0 -1023 (-0)}
; -1.0034805644858639794847476878203451633453369140625p-973 - -zero == -1.0034805644858639794847476878203451633453369140625p-973
; [HW: -1.0034805644858639794847476878203451633453369140625p-973] 

; mpf : - 15675068921576 -973
; mpfd: - 15675068921576 -973 (-1.25696e-293) class: Neg. norm. non-zero
; hwf : - 15675068921576 -973 (-1.25696e-293) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000110010 #b0000000011100100000110100010111010100011011011101000)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b00000110010 #b0000000011100100000110100010111010100011011011101000)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
