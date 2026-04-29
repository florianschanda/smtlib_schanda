(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5677579374062997619176940133911557495594024658203125p663 {- 2556954435339653 663 (-6.00021e+199)}
; Y = -1.095212955348450645232105671311728656291961669921875p-571 {- 428801030228126 -571 (-1.417e-172)}
; -1.5677579374062997619176940133911557495594024658203125p663 < -1.095212955348450645232105671311728656291961669921875p-571 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010010110 #b1001000101011000100101011000110100110100010110000101)))
(assert (= y (fp #b1 #b00111000100 #b0001100001011111111000000101000101100000100010011110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
