(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.104572896456909258944278917624615132808685302734375p248 {- 470954457516390 248 (-4.99613e+074)}
; Y = -1.771546702912390802708841874846257269382476806640625p-201 {- 3474737443735178 -201 (-5.51218e-061)}
; -1.104572896456909258944278917624615132808685302734375p248 > -1.771546702912390802708841874846257269382476806640625p-201 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011110111 #b0001101011000101010010100001001001010100100101100110)))
(assert (= y (fp #b1 #b01100110110 #b1100010110000100000101011011000001011000011010001010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
