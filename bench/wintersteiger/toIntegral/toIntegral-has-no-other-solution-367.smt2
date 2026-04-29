(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.616052718338284677201954764313995838165283203125 753 {- 2774454792748880 753 (-7.65671e+226)}
; -1.616052718338284677201954764313995838165283203125 753 I == -1.616052718338284677201954764313995838165283203125 753
; [HW: -1.616052718338284677201954764313995838165283203125 753] 

; mpf : - 2774454792748880 753
; mpfd: - 2774454792748880 753 (-7.65671e+226) class: Neg. norm. non-zero
; hwf : - 2774454792748880 753 (-7.65671e+226) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011110000 #b1001110110110101101000011000010111011111111101010000)))
(assert (= r (fp #b1 #b11011110000 #b1001110110110101101000011000010111011111111101010000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
