(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.26920612286760015052777816890738904476165771484375p-194 {- 1212396594632380 -194 (-5.05491e-059)}
; Y = 1.4357797483664622717469683266244828701019287109375p926 {+ 1962577512358808 926 (8.14449e+278)}
; -1.26920612286760015052777816890738904476165771484375p-194 = 1.4357797483664622717469683266244828701019287109375p926 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100111101 #b0100010011101010101100010100010110011001011010111100)))
(assert (= y (fp #b0 #b11110011101 #b0110111110001111010000101111011101111110001110011000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
