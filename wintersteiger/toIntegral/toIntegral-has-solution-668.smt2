(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.600414444757742860048210786771960556507110595703125 717 {+ 2704026269678834 717 (1.10342e+216)}
; 1.600414444757742860048210786771960556507110595703125 717 I == 1.600414444757742860048210786771960556507110595703125 717
; [HW: 1.600414444757742860048210786771960556507110595703125 717] 

; mpf : + 2704026269678834 717
; mpfd: + 2704026269678834 717 (1.10342e+216) class: Pos. norm. non-zero
; hwf : + 2704026269678834 717 (1.10342e+216) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001100 #b1001100110110100110000101101010001000111110011110010)))
(assert (= r (fp #b0 #b11011001100 #b1001100110110100110000101101010001000111110011110010)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
