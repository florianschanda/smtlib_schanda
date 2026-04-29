(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.09525463920300492048909291042946279048919677734375 624 {- 428988757619964 624 (-7.62487e+187)}
; -1.09525463920300492048909291042946279048919677734375 624 I == -1.09525463920300492048909291042946279048919677734375 624
; [HW: -1.09525463920300492048909291042946279048919677734375 624] 

; mpf : - 428988757619964 624
; mpfd: - 428988757619964 624 (-7.62487e+187) class: Neg. norm. non-zero
; hwf : - 428988757619964 624 (-7.62487e+187) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101111 #b0001100001100010100110111010100000101011010011111100)))
(assert (= r (fp #b1 #b11001101111 #b0001100001100010100110111010100000101011010011111100)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
