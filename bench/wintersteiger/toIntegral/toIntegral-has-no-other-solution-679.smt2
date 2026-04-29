(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.77180627623756681288114123162813484668731689453125 551 {+ 3475906458065716 551 (1.306e+166)}
; 1.77180627623756681288114123162813484668731689453125 551 I == 1.77180627623756681288114123162813484668731689453125 551
; [HW: 1.77180627623756681288114123162813484668731689453125 551] 

; mpf : + 3475906458065716 551
; mpfd: + 3475906458065716 551 (1.306e+166) class: Pos. norm. non-zero
; hwf : + 3475906458065716 551 (1.306e+166) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100110 #b1100010110010101000110001001101101001001101100110100)))
(assert (= r (fp #b0 #b11000100110 #b1100010110010101000110001001101101001001101100110100)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
