(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.251876859870490132919940151623450219631195068359375p892 {- 1134352532255990 892 (-4.1335e+268)}
; Y = -1.1156275895987206592252505288342945277690887451171875p-420 {- 520740369430547 -420 (-4.12023e-127)}
; -1.251876859870490132919940151623450219631195068359375p892 = -1.1156275895987206592252505288342945277690887451171875p-420 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101111011 #b0100000001111011000000000111101111000011010011110110)))
(assert (= y (fp #b1 #b01001011011 #b0001110110011001110001010000101111010111100000010011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
