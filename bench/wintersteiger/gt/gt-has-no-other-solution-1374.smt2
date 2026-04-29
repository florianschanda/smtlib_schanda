(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9760480560714344111516993507393635809421539306640625p725 {+ 4395729661619009 725 (3.48774e+218)}
; Y = -1.7971662284120053509894887611153535544872283935546875p457 {- 3590117529228651 457 (-6.688e+137)}
; 1.9760480560714344111516993507393635809421539306640625p725 > -1.7971662284120053509894887611153535544872283935546875p457 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011010100 #b1111100111011110010010010001000000100110101101000001)))
(assert (= y (fp #b1 #b10111001000 #b1100110000010011000101100000000010000001010101101011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
