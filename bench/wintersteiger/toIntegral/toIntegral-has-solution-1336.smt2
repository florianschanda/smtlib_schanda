(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.58540656201601048991278730682097375392913818359375 638 {- 2636436774555548 638 (-1.80833e+192)}
; -1.58540656201601048991278730682097375392913818359375 638 I == -1.58540656201601048991278730682097375392913818359375 638
; [HW: -1.58540656201601048991278730682097375392913818359375 638] 

; mpf : - 2636436774555548 638
; mpfd: - 2636436774555548 638 (-1.80833e+192) class: Neg. norm. non-zero
; hwf : - 2636436774555548 638 (-1.80833e+192) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001111101 #b1001010111011101001101000101011010111000111110011100)))
(assert (= r (fp #b1 #b11001111101 #b1001010111011101001101000101011010111000111110011100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
