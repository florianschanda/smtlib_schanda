(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.230615565650504894534833510988391935825347900390625p-189 {+ 1038600175529450 -189 (1.56839e-057)}
; Y = -1.5052452690299553683672684201155789196491241455078125p-462 {- 2275422405334013 -462 (-1.26401e-139)}
; 1.230615565650504894534833510988391935825347900390625p-189 > -1.5052452690299553683672684201155789196491241455078125p-462 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101000010 #b0011101100001001100111110010100001101010110111101010)))
(assert (= y (fp #b1 #b01000110001 #b1000000101010111110000010000001011110001001111111101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
