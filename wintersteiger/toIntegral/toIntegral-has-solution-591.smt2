(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0604095239089641466989633045159280300140380859375 503 {- 272060309366040 503 (-2.77691e+151)}
; -1.0604095239089641466989633045159280300140380859375 503 I == -1.0604095239089641466989633045159280300140380859375 503
; [HW: -1.0604095239089641466989633045159280300140380859375 503] 

; mpf : - 272060309366040 503
; mpfd: - 272060309366040 503 (-2.77691e+151) class: Neg. norm. non-zero
; hwf : - 272060309366040 503 (-2.77691e+151) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111110110 #b0000111101110110111111111010000110001110010100011000)))
(assert (= r (fp #b1 #b10111110110 #b0000111101110110111111111010000110001110010100011000)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
