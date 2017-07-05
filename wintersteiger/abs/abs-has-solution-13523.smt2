(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4061329890730676073218319288571365177631378173828125p203 {+ 1829060378252333 203 (1.80765e+061)}
; 1.4061329890730676073218319288571365177631378173828125p203 | == 1.4061329890730676073218319288571365177631378173828125p203
; [HW: 1.4061329890730676073218319288571365177631378173828125p203] 

; mpf : + 1829060378252333 203
; mpfd: + 1829060378252333 203 (1.80765e+061) class: Pos. norm. non-zero
; hwf : + 1829060378252333 203 (1.80765e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011001010 #b0110011111111000010101001110000111100101010000101101)))
(assert (= r (fp #b0 #b10011001010 #b0110011111111000010101001110000111100101010000101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
