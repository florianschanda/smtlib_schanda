(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6336330866563317787409914672025479376316070556640625p-53 {- 2853629732955073 -53 (-1.8137e-016)}
; Y = -1.71806425613331636981229166849516332149505615234375p-921 {- 3233873916350076 -921 (-9.692e-278)}
; -1.6336330866563317787409914672025479376316070556640625p-53 > -1.71806425613331636981229166849516332149505615234375p-921 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001010 #b1010001000110101110001110010100011011010001111000001)))
(assert (= y (fp #b1 #b00001100110 #b1011011111010011000011110010000010000100111001111100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
