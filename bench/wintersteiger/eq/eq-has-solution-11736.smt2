(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.62804925453950932734414891456253826618194580078125p-825 {- 2828482388714452 -825 (-7.27648e-249)}
; Y = -1.7688533552289105177379724409547634422779083251953125p-771 {- 3462607684111477 -771 (-1.42418e-232)}
; -1.62804925453950932734414891456253826618194580078125p-825 = -1.7688533552289105177379724409547634422779083251953125p-771 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011000110 #b1010000011000111110101100000000010000110001111010100)))
(assert (= y (fp #b1 #b00011111100 #b1100010011010011100100101101000000100000110001110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
