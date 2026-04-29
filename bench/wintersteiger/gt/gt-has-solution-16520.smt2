(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.256684701313364183050680367159657180309295654296875p612 {+ 1156005125186574 612 (2.13591e+184)}
; Y = -1.0974541731849762893347133285715244710445404052734375p-393 {- 438894578041559 -393 (-5.43999e-119)}
; 1.256684701313364183050680367159657180309295654296875p612 > -1.0974541731849762893347133285715244710445404052734375p-393 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001100011 #b0100000110110110000101101010110110000110010000001110)))
(assert (= y (fp #b1 #b01001110110 #b0001100011110010110000011011011010110000001011010111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
