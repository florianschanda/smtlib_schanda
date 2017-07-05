(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8179860365216720108350045848055742681026458740234375 74 {- 3683881609273271 74 (-3.43408e+022)}
; -1.8179860365216720108350045848055742681026458740234375 74 I == -1.8179860365216720108350045848055742681026458740234375 74
; [HW: -1.8179860365216720108350045848055742681026458740234375 74] 

; mpf : - 3683881609273271 74
; mpfd: - 3683881609273271 74 (-3.43408e+022) class: Neg. norm. non-zero
; hwf : - 3683881609273271 74 (-3.43408e+022) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001001001 #b1101000101100111100010000110101101110001111110110111)))
(assert (= r (fp #b1 #b10001001001 #b1101000101100111100010000110101101110001111110110111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
