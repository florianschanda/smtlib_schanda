(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.738231056279337938264006879762746393680572509765625p-407 {- 3324697109972954 -407 (-5.25895e-123)}
; Y = -1.030931500629361341481171621126122772693634033203125p212 {- 139303094708402 212 (-6.78561e+063)}
; -1.738231056279337938264006879762746393680572509765625p-407 = -1.030931500629361341481171621126122772693634033203125p212 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001101000 #b1011110011111100101101011110001110011100011111011010)))
(assert (= y (fp #b1 #b10011010011 #b0000011111101011001000000111011110011110100010110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
