(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0506596023618681723377221715054474771022796630859375p120 {- 228150566319647 120 (-1.39657e+036)}
; Y = 1.74155713347923057909838462364859879016876220703125p-817 {+ 3339676430010996 -817 (1.99265e-246)}
; -1.0506596023618681723377221715054474771022796630859375p120 > 1.74155713347923057909838462364859879016876220703125p-817 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001110111 #b0000110011111000000001110001011101011111011000011111)))
(assert (= y (fp #b0 #b00011001110 #b1011110111010110101100000011010001101000101001110100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
