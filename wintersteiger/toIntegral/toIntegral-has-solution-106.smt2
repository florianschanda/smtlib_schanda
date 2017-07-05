(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5611342003596713201574175400310195982456207275390625 551 {- 2527123775644657 551 (-1.15072e+166)}
; -1.5611342003596713201574175400310195982456207275390625 551 I == -1.5611342003596713201574175400310195982456207275390625 551
; [HW: -1.5611342003596713201574175400310195982456207275390625 551] 

; mpf : - 2527123775644657 551
; mpfd: - 2527123775644657 551 (-1.15072e+166) class: Neg. norm. non-zero
; hwf : - 2527123775644657 551 (-1.15072e+166) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000100110 #b1000111110100110011111011010111100110110001111110001)))
(assert (= r (fp #b1 #b11000100110 #b1000111110100110011111011010111100110110001111110001)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
