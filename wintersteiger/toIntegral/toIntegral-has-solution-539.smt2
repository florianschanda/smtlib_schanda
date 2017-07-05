(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3483287197141378133125044769258238375186920166015625 499 {- 1568733092307033 499 (-2.2068e+150)}
; -1.3483287197141378133125044769258238375186920166015625 499 I == -1.3483287197141378133125044769258238375186920166015625 499
; [HW: -1.3483287197141378133125044769258238375186920166015625 499] 

; mpf : - 1568733092307033 499
; mpfd: - 1568733092307033 499 (-2.2068e+150) class: Neg. norm. non-zero
; hwf : - 1568733092307033 499 (-2.2068e+150) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111110010 #b0101100100101100000100100010101101101110000001011001)))
(assert (= r (fp #b1 #b10111110010 #b0101100100101100000100100010101101101110000001011001)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
