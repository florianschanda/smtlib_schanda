(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0133850387631053724390994830173440277576446533203125p-2 {- 60280855585861 -2 (-0.253346)}
; Y = 1.9753779589886584222568899349425919353961944580078125p484 {+ 4392711812646717 484 (9.86661e+145)}
; -1.0133850387631053724390994830173440277576446533203125p-2 = 1.9753779589886584222568899349425919353961944580078125p484 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111111101 #b0000001101101101001100111010111110111110010001000101)))
(assert (= y (fp #b0 #b10111100011 #b1111100110110010010111101011001100011000011100111101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
