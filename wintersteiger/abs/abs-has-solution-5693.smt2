(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.400993206557025860803378236596472561359405517578125p-504 {+ 1805912855628322 -504 (2.67497e-152)}
; 1.400993206557025860803378236596472561359405517578125p-504 | == 1.400993206557025860803378236596472561359405517578125p-504
; [HW: 1.400993206557025860803378236596472561359405517578125p-504] 

; mpf : + 1805912855628322 -504
; mpfd: + 1805912855628322 -504 (2.67497e-152) class: Pos. norm. non-zero
; hwf : + 1805912855628322 -504 (2.67497e-152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000000111 #b0110011010100111011111011010010000010100101000100010)))
(assert (= r (fp #b0 #b01000000111 #b0110011010100111011111011010010000010100101000100010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
