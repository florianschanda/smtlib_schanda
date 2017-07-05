(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0173520748060218554797984324977733194828033447265625p-895 {- 78146797630505 -895 (-3.85146e-270)}
; Y = -1.0127720221986045157080980061437003314495086669921875p320 {- 57520074414403 320 (-2.16327e+096)}
; -1.0173520748060218554797984324977733194828033447265625p-895 / -1.0127720221986045157080980061437003314495086669921875p320 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010000000 #b0000010001110001001011111000000111001111010000101001)))
(assert (= y (fp #b1 #b10100111111 #b0000001101000101000001101111100110100101100101000011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
