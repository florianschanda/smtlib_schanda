(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1673011959313901453327844137675128877162933349609375p-967 {- 753457603655247 -967 (-9.35787e-292)}
; Y = -1.405742615392042704769437477807514369487762451171875p-146 {- 1827302291487934 -146 (-1.57589e-044)}
; -1.1673011959313901453327844137675128877162933349609375p-967 > -1.405742615392042704769437477807514369487762451171875p-146 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000111000 #b0010101011010100010000000100110100011011011001001111)))
(assert (= y (fp #b1 #b01101101101 #b0110011111011110101111110111111110110011110010111110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
