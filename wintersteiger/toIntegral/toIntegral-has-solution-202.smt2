(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.577786588390090560807266228948719799518585205078125 651 {- 2602119464173282 651 (-1.47426e+196)}
; -1.577786588390090560807266228948719799518585205078125 651 I == -1.577786588390090560807266228948719799518585205078125 651
; [HW: -1.577786588390090560807266228948719799518585205078125 651] 

; mpf : - 2602119464173282 651
; mpfd: - 2602119464173282 651 (-1.47426e+196) class: Neg. norm. non-zero
; hwf : - 2602119464173282 651 (-1.47426e+196) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010001010 #b1001001111101001110100100110010100110011111011100010)))
(assert (= r (fp #b1 #b11010001010 #b1001001111101001110100100110010100110011111011100010)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
