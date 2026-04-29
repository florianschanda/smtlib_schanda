(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8807853988448559601209808533894829452037811279296875p-815 {- 3966704794031067 -815 (-8.60781e-246)}
; -1.8807853988448559601209808533894829452037811279296875p-815 | == 1.8807853988448559601209808533894829452037811279296875p-815
; [HW: 1.8807853988448559601209808533894829452037811279296875p-815] 

; mpf : + 3966704794031067 -815
; mpfd: + 3966704794031067 -815 (8.60781e-246) class: Pos. norm. non-zero
; hwf : + 3966704794031067 -815 (8.60781e-246) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011010000 #b1110000101111011001001101110001011010101001111011011)))
(assert (= r (fp #b0 #b00011010000 #b1110000101111011001001101110001011010101001111011011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
