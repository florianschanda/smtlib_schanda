(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2271230456623161142459821348893456161022186279296875 295 {- 1022871263812059 295 (-7.81154e+088)}
; -1.2271230456623161142459821348893456161022186279296875 295 I == -1.2271230456623161142459821348893456161022186279296875 295
; [HW: -1.2271230456623161142459821348893456161022186279296875 295] 

; mpf : - 1022871263812059 295
; mpfd: - 1022871263812059 295 (-7.81154e+088) class: Neg. norm. non-zero
; hwf : - 1022871263812059 295 (-7.81154e+088) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100100110 #b0011101000100100101111000110010101001001100111011011)))
(assert (= r (fp #b1 #b10100100110 #b0011101000100100101111000110010101001001100111011011)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
