(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.87719288411251117310030167573131620883941650390625 955 {- 3950525546021156 955 (-5.71682e+287)}
; -1.87719288411251117310030167573131620883941650390625 955 I == -1.87719288411251117310030167573131620883941650390625 955
; [HW: -1.87719288411251117310030167573131620883941650390625 955] 

; mpf : - 3950525546021156 955
; mpfd: - 3950525546021156 955 (-5.71682e+287) class: Neg. norm. non-zero
; hwf : - 3950525546021156 955 (-5.71682e+287) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110111010 #b1110000010001111101101100111110110001100000100100100)))
(assert (= r (fp #b1 #b11110111010 #b1110000010001111101101100111110110001100000100100100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
