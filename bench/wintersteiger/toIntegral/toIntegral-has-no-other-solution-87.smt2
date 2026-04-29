(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8446379321345933721687515571829862892627716064453125 184 {- 3803911076424341 184 (-4.52304e+055)}
; -1.8446379321345933721687515571829862892627716064453125 184 I == -1.8446379321345933721687515571829862892627716064453125 184
; [HW: -1.8446379321345933721687515571829862892627716064453125 184] 

; mpf : - 3803911076424341 184
; mpfd: - 3803911076424341 184 (-4.52304e+055) class: Neg. norm. non-zero
; hwf : - 3803911076424341 184 (-4.52304e+055) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010110111 #b1101100000111010001100010000011101111010101010010101)))
(assert (= r (fp #b1 #b10010110111 #b1101100000111010001100010000011101111010101010010101)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
