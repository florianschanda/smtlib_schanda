(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.20965643595102800844642843003384768962860107421875p114 {+ 944208646824876 114 (2.51236e+034)}
; 1.20965643595102800844642843003384768962860107421875p114 | == 1.20965643595102800844642843003384768962860107421875p114
; [HW: 1.20965643595102800844642843003384768962860107421875p114] 

; mpf : + 944208646824876 114
; mpfd: + 944208646824876 114 (2.51236e+034) class: Pos. norm. non-zero
; hwf : + 944208646824876 114 (2.51236e+034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001110001 #b0011010110101100000010110100111111001110001110101100)))
(assert (= r (fp #b0 #b10001110001 #b0011010110101100000010110100111111001110001110101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
