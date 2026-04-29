(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2324062755194862273100397942471317946910858154296875 537 {+ 1046664815828123 537 (5.54449e+161)}
; 1.2324062755194862273100397942471317946910858154296875 537 I == 1.2324062755194862273100397942471317946910858154296875 537
; [HW: 1.2324062755194862273100397942471317946910858154296875 537] 

; mpf : + 1046664815828123 537
; mpfd: + 1046664815828123 537 (5.54449e+161) class: Pos. norm. non-zero
; hwf : + 1046664815828123 537 (5.54449e+161) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000011000 #b0011101101111110111110100100100010111101110010011011)))
(assert (= r (fp #b0 #b11000011000 #b0011101101111110111110100100100010111101110010011011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
