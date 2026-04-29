(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4416458977196875412829513152246363461017608642578125p775 {- 1988996300400093 775 (-2.86487e+233)}
; Y = 1.837530680627767143420214779325760900974273681640625p-279 {+ 3771902861186570 -279 (1.89176e-084)}
; -1.4416458977196875412829513152246363461017608642578125p775 > 1.837530680627767143420214779325760900974273681640625p-279 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100000110 #b0111000100001111101101001001111100011110010111011101)))
(assert (= y (fp #b0 #b01011101000 #b1101011001101000011010010010001010110001011000001010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
