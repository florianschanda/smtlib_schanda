(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.592544858990925238373392858193255960941314697265625p958 {- 2668584806151834 958 (-3.87996e+288)}
; -1.592544858990925238373392858193255960941314697265625p958 | == 1.592544858990925238373392858193255960941314697265625p958
; [HW: 1.592544858990925238373392858193255960941314697265625p958] 

; mpf : + 2668584806151834 958
; mpfd: + 2668584806151834 958 (3.87996e+288) class: Pos. norm. non-zero
; hwf : + 2668584806151834 958 (3.87996e+288) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110111101 #b1001011110110001000001010001011011000111011010011010)))
(assert (= r (fp #b0 #b11110111101 #b1001011110110001000001010001011011000111011010011010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
