(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.20276890362749355745108914561569690704345703125 203 {+ 913189958819104 203 (1.54622e+061)}
; 1.20276890362749355745108914561569690704345703125 203 I == 1.20276890362749355745108914561569690704345703125 203
; [HW: 1.20276890362749355745108914561569690704345703125 203] 

; mpf : + 913189958819104 203
; mpfd: + 913189958819104 203 (1.54622e+061) class: Pos. norm. non-zero
; hwf : + 913189958819104 203 (1.54622e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011001010 #b0011001111101000101010011011000110111001110100100000)))
(assert (= r (fp #b0 #b10011001010 #b0011001111101000101010011011000110111001110100100000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
