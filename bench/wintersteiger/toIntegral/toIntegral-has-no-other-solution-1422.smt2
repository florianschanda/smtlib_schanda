(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.61828881045124717275029979646205902099609375 551 {- 2784525256355584 551 (-1.19284e+166)}
; -1.61828881045124717275029979646205902099609375 551 I == -1.61828881045124717275029979646205902099609375 551
; [HW: -1.61828881045124717275029979646205902099609375 551] 

; mpf : - 2784525256355584 551
; mpfd: - 2784525256355584 551 (-1.19284e+166) class: Neg. norm. non-zero
; hwf : - 2784525256355584 551 (-1.19284e+166) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000100110 #b1001111001001000001011001110110001011110111100000000)))
(assert (= r (fp #b1 #b11000100110 #b1001111001001000001011001110110001011110111100000000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
