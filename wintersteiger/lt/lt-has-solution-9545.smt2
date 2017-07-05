(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.68384477132231413776253248215653002262115478515625p553 {- 3079763057306436 553 (-4.96466e+166)}
; Y = -1.8096537394937854958953948880662210285663604736328125p-865 {- 3646356279483341 -865 (-7.35613e-261)}
; -1.68384477132231413776253248215653002262115478515625p553 < -1.8096537394937854958953948880662210285663604736328125p-865 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000101000 #b1010111100010000011100110111000001011110101101000100)))
(assert (= y (fp #b1 #b00010011110 #b1100111101000101011101111010110000110101101111001101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
