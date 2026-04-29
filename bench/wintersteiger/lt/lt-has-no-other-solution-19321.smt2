(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6694682965646754357891268227831460535526275634765625p-1001 {+ 3015017170945033 -1001 (7.79027e-302)}
; Y = -1.8843728889175712648551552774733863770961761474609375p314 {- 3982861412985743 314 (-6.28906e+094)}
; 1.6694682965646754357891268227831460535526275634765625p-1001 < -1.8843728889175712648551552774733863770961761474609375p314 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010110 #b1010101101100010010001100011011101110100010000001001)))
(assert (= y (fp #b1 #b10100111001 #b1110001001100110010000101111101101011110101110001111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
