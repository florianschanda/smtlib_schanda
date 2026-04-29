(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.964769459935816531270802443032152950763702392578125 451 {- 4344935380265378 451 (-1.14246e+136)}
; -1.964769459935816531270802443032152950763702392578125 451 I == -1.964769459935816531270802443032152950763702392578125 451
; [HW: -1.964769459935816531270802443032152950763702392578125 451] 

; mpf : - 4344935380265378 451
; mpfd: - 4344935380265378 451 (-1.14246e+136) class: Neg. norm. non-zero
; hwf : - 4344935380265378 451 (-1.14246e+136) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111000010 #b1111011011111011001000011001111010011010100110100010)))
(assert (= r (fp #b1 #b10111000010 #b1111011011111011001000011001111010011010100110100010)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
