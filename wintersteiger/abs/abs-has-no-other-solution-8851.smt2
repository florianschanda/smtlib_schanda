(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.741525965022781452518074729596264660358428955078125p-698 {- 3339536059762146 -698 (-1.32432e-210)}
; -1.741525965022781452518074729596264660358428955078125p-698 | == 1.741525965022781452518074729596264660358428955078125p-698
; [HW: 1.741525965022781452518074729596264660358428955078125p-698] 

; mpf : + 3339536059762146 -698
; mpfd: + 3339536059762146 -698 (1.32432e-210) class: Pos. norm. non-zero
; hwf : + 3339536059762146 -698 (1.32432e-210) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101000101 #b1011110111010100101001010100100011101000010111100010)))
(assert (= r (fp #b0 #b00101000101 #b1011110111010100101001010100100011101000010111100010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
