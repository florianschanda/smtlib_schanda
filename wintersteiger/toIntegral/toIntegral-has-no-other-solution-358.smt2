(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.078067713298854979342422666377387940883636474609375 522 {+ 351585724522390 522 (1.48014e+157)}
; 1.078067713298854979342422666377387940883636474609375 522 I == 1.078067713298854979342422666377387940883636474609375 522
; [HW: 1.078067713298854979342422666377387940883636474609375 522] 

; mpf : + 351585724522390 522
; mpfd: + 351585724522390 522 (1.48014e+157) class: Pos. norm. non-zero
; hwf : + 351585724522390 522 (1.48014e+157) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000001001 #b0001001111111100001111101110001101111101111110010110)))
(assert (= r (fp #b0 #b11000001001 #b0001001111111100001111101110001101111101111110010110)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
