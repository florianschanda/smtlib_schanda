(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.506681816823384867376489637535996735095977783203125p781 {- 2281892041441202 781 (-1.91623e+235)}
; -1.506681816823384867376489637535996735095977783203125p781 | == 1.506681816823384867376489637535996735095977783203125p781
; [HW: 1.506681816823384867376489637535996735095977783203125p781] 

; mpf : + 2281892041441202 781
; mpfd: + 2281892041441202 781 (1.91623e+235) class: Pos. norm. non-zero
; hwf : + 2281892041441202 781 (1.91623e+235) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100001100 #b1000000110110101111001100100100010111011111110110010)))
(assert (= r (fp #b0 #b11100001100 #b1000000110110101111001100100100010111011111110110010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
