(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.142360086448980016626819633529521524906158447265625 347 {+ 641132832284058 347 (3.275e+104)}
; 1.142360086448980016626819633529521524906158447265625 347 I == 1.142360086448980016626819633529521524906158447265625 347
; [HW: 1.142360086448980016626819633529521524906158447265625 347] 

; mpf : + 641132832284058 347
; mpfd: + 641132832284058 347 (3.275e+104) class: Pos. norm. non-zero
; hwf : + 641132832284058 347 (3.275e+104) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011010 #b0010010001110001101101011110101110001101110110011010)))
(assert (= r (fp #b0 #b10101011010 #b0010010001110001101101011110101110001101110110011010)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
