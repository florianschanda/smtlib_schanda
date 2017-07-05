(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5398367570522848435388141297153197228908538818359375p459 {+ 2431208617901567 459 (2.29215e+138)}
; Y = 1.9105254275122522944485581319895572960376739501953125p-321 {+ 4100641976055541 -321 (4.47223e-097)}
; 1.5398367570522848435388141297153197228908538818359375p459 = 1.9105254275122522944485581319895572960376739501953125p-321 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111001010 #b1000101000110010101111011110000010110111110111111111)))
(assert (= y (fp #b0 #b01010111110 #b1110100100011000001100011100010101010111011011110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
