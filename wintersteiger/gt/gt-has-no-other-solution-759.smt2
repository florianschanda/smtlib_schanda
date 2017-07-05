(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5023090643517946762841575036873109638690948486328125p922 {- 2262198915039565 922 (-5.32617e+277)}
; Y = -1.644777244630038381956183002330362796783447265625p-270 {- 2903818558652816 -270 (-8.66978e-082)}
; -1.5023090643517946762841575036873109638690948486328125p922 > -1.644777244630038381956183002330362796783447265625p-270 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110011001 #b1000000010010111010100111010101111100000000101001101)))
(assert (= y (fp #b1 #b01011110001 #b1010010100010000000111110001101011100100000110010000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
