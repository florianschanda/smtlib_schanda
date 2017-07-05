(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1594864813508520828833070481778122484683990478515625p923 {+ 718263257982329 923 (8.22151e+277)}
; 1.1594864813508520828833070481778122484683990478515625p923 | == 1.1594864813508520828833070481778122484683990478515625p923
; [HW: 1.1594864813508520828833070481778122484683990478515625p923] 

; mpf : + 718263257982329 923
; mpfd: + 718263257982329 923 (8.22151e+277) class: Pos. norm. non-zero
; hwf : + 718263257982329 923 (8.22151e+277) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011010 #b0010100011010100000110110010010110001110010101111001)))
(assert (= r (fp #b0 #b11110011010 #b0010100011010100000110110010010110001110010101111001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
