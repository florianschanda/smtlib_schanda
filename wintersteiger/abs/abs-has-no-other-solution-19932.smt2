(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.015570836370726315323054222972132265567779541015625p33 {+ 70124812877050 33 (8.72369e+009)}
; 1.015570836370726315323054222972132265567779541015625p33 | == 1.015570836370726315323054222972132265567779541015625p33
; [HW: 1.015570836370726315323054222972132265567779541015625p33] 

; mpf : + 70124812877050 33
; mpfd: + 70124812877050 33 (8.72369e+009) class: Pos. norm. non-zero
; hwf : + 70124812877050 33 (8.72369e+009) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100000 #b0000001111111100011100110100100011111011110011111010)))
(assert (= r (fp #b0 #b10000100000 #b0000001111111100011100110100100011111011110011111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
