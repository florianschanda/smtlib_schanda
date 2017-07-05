(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3869725562748549396729913496528752148151397705078125p938 {+ 1742769460242045 938 (3.22258e+282)}
; 1.3869725562748549396729913496528752148151397705078125p938 | == 1.3869725562748549396729913496528752148151397705078125p938
; [HW: 1.3869725562748549396729913496528752148151397705078125p938] 

; mpf : + 1742769460242045 938
; mpfd: + 1742769460242045 938 (3.22258e+282) class: Pos. norm. non-zero
; hwf : + 1742769460242045 938 (3.22258e+282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101001 #b0110001100010000101000100010100110100110011001111101)))
(assert (= r (fp #b0 #b11110101001 #b0110001100010000101000100010100110100110011001111101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
