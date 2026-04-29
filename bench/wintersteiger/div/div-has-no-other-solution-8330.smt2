(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.70951923858429299940553391934372484683990478515625p-407 {+ 3195390578500420 -407 (5.17209e-123)}
; Y = -1.1265890824169357831152638027560897171497344970703125p741 {- 570106544402085 741 (-1.30314e+223)}
; 1.70951923858429299940553391934372484683990478515625p-407 / -1.1265890824169357831152638027560897171497344970703125p741 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001101000 #b1011010110100011000011011000010110011010001101000100)))
(assert (= y (fp #b1 #b11011100100 #b0010000001101000001001000110000100000010111010100101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
