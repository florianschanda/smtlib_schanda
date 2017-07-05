(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.594357728152087094741773398709483444690704345703125p-860 {- 2676749243030514 -860 (-2.07391e-259)}
; Y = 1.208008717341054083505014205002225935459136962890625p716 {+ 936787981906986 716 (4.16435e+215)}
; -1.594357728152087094741773398709483444690704345703125p-860 < 1.208008717341054083505014205002225935459136962890625p716 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010100011 #b1001100000100111110100111111110010001001101111110010)))
(assert (= y (fp #b0 #b11011001011 #b0011010101000000000011110010111001000011010000101010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
