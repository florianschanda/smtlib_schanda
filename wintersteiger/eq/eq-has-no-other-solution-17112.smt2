(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1734843877815475110537590808235108852386474609375p-944 {+ 781304224167576 -944 (7.89153e-285)}
; Y = -1.046160944137877635284894495271146297454833984375p-33 {- 207890410818416 -33 (-1.21789e-010)}
; 1.1734843877815475110537590808235108852386474609375p-944 = -1.046160944137877635284894495271146297454833984375p-33 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001111 #b0010110001101001011110010000101111100011011010011000)))
(assert (= y (fp #b1 #b01111011110 #b0000101111010001001101000010000101101100101101110000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
