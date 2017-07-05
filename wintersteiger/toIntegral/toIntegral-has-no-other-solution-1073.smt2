(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4099476329460494117284952153568156063556671142578125 592 {- 1846240006977245 592 (-2.28539e+178)}
; -1.4099476329460494117284952153568156063556671142578125 592 I == -1.4099476329460494117284952153568156063556671142578125 592
; [HW: -1.4099476329460494117284952153568156063556671142578125 592] 

; mpf : - 1846240006977245 592
; mpfd: - 1846240006977245 592 (-2.28539e+178) class: Neg. norm. non-zero
; hwf : - 1846240006977245 592 (-2.28539e+178) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001001111 #b0110100011110010010100111111110010010011011011011101)))
(assert (= r (fp #b1 #b11001001111 #b0110100011110010010100111111110010010011011011011101)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
