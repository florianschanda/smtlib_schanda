(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6655473861330574170125373711925931274890899658203125 235 {- 2997358960186245 235 (-9.19615e+070)}
; -1.6655473861330574170125373711925931274890899658203125 235 I == -1.6655473861330574170125373711925931274890899658203125 235
; [HW: -1.6655473861330574170125373711925931274890899658203125 235] 

; mpf : - 2997358960186245 235
; mpfd: - 2997358960186245 235 (-9.19615e+070) class: Neg. norm. non-zero
; hwf : - 2997358960186245 235 (-9.19615e+070) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101010 #b1010101001100001010100000100000101100001001110000101)))
(assert (= r (fp #b1 #b10011101010 #b1010101001100001010100000100000101100001001110000101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
