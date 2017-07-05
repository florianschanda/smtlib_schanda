(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.938491211148033688260738927056081593036651611328125p35 {+ 4226588668816770 35 (6.66061e+010)}
; 1.938491211148033688260738927056081593036651611328125p35 | == 1.938491211148033688260738927056081593036651611328125p35
; [HW: 1.938491211148033688260738927056081593036651611328125p35] 

; mpf : + 4226588668816770 35
; mpfd: + 4226588668816770 35 (6.66061e+010) class: Pos. norm. non-zero
; hwf : + 4226588668816770 35 (6.66061e+010) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100010 #b1111000001000000111101011100001101110110110110000010)))
(assert (= r (fp #b0 #b10000100010 #b1111000001000000111101011100001101110110110110000010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
