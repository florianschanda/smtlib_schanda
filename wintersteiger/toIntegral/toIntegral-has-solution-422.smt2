(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.90832496805096951675295713357627391815185546875 365 {+ 4090731987645664 365 (1.43417e+110)}
; 1.90832496805096951675295713357627391815185546875 365 I == 1.90832496805096951675295713357627391815185546875 365
; [HW: 1.90832496805096951675295713357627391815185546875 365] 

; mpf : + 4090731987645664 365
; mpfd: + 4090731987645664 365 (1.43417e+110) class: Pos. norm. non-zero
; hwf : + 4090731987645664 365 (1.43417e+110) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101101100 #b1110100010000111111111000010111111101011010011100000)))
(assert (= r (fp #b0 #b10101101100 #b1110100010000111111111000010111111101011010011100000)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
