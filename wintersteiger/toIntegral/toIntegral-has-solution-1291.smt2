(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7176317098869429145224785315804183483123779296875 694 {- 3231925901236088 694 (-1.41172e+209)}
; -1.7176317098869429145224785315804183483123779296875 694 I == -1.7176317098869429145224785315804183483123779296875 694
; [HW: -1.7176317098869429145224785315804183483123779296875 694] 

; mpf : - 3231925901236088 694
; mpfd: - 3231925901236088 694 (-1.41172e+209) class: Neg. norm. non-zero
; hwf : - 3231925901236088 694 (-1.41172e+209) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010110101 #b1011011110110110101101100011010010001001011101111000)))
(assert (= r (fp #b1 #b11010110101 #b1011011110110110101101100011010010001001011101111000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
