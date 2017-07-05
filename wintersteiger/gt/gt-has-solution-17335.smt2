(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4452441016346455615604327249457128345966339111328125p280 {+ 2005201170210701 280 (2.80763e+084)}
; Y = -1.0308625872528656142179670496261678636074066162109375p-138 {- 138992736451695 -138 (-2.95843e-042)}
; 1.4452441016346455615604327249457128345966339111328125p280 > -1.0308625872528656142179670496261678636074066162109375p-138 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100010111 #b0111000111111011100001000111011101000001111110001101)))
(assert (= y (fp #b1 #b01101110101 #b0000011111100110100111000100101011101011110001101111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
