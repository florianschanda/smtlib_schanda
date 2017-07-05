(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7447262942446750688674228513264097273349761962890625p128 {- 3353949061253329 128 (-5.937e+038)}
; Y = 1.1684527478630186703156823568861000239849090576171875p-116 {+ 758643732505427 -116 (1.40647e-035)}
; -1.7447262942446750688674228513264097273349761962890625p128 > 1.1684527478630186703156823568861000239849090576171875p-116 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001111111 #b1011111010100110011000011110011001000000100011010001)))
(assert (= y (fp #b0 #b01110001011 #b0010101100011111101110000010001011111110001101010011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
