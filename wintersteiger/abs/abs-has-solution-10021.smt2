(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7398718744120478252312977929250337183475494384765625p-936 {- 3332086697904009 -936 (-2.99531e-282)}
; -1.7398718744120478252312977929250337183475494384765625p-936 | == 1.7398718744120478252312977929250337183475494384765625p-936
; [HW: 1.7398718744120478252312977929250337183475494384765625p-936] 

; mpf : + 3332086697904009 -936
; mpfd: + 3332086697904009 -936 (2.99531e-282) class: Pos. norm. non-zero
; hwf : + 3332086697904009 -936 (2.99531e-282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001010111 #b1011110101101000001111100011111111010100011110001001)))
(assert (= r (fp #b0 #b00001010111 #b1011110101101000001111100011111111010100011110001001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
