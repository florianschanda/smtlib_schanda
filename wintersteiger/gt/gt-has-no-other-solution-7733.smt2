(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2357704924777881405617563359555788338184356689453125p-236 {+ 1061815902067925 -236 (1.11907e-071)}
; Y = -1.7004165653602820729162203861051239073276519775390625p-593 {- 3154395782760689 -593 (-5.24527e-179)}
; 1.2357704924777881405617563359555788338184356689453125p-236 > -1.7004165653602820729162203861051239073276519775390625p-593 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100010011 #b0011110001011011011101000111101010001101110011010101)))
(assert (= y (fp #b1 #b00110101110 #b1011001101001110100000000000000111001100100011110001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
