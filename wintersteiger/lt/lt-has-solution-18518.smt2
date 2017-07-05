(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.843824854320589512468586690374650061130523681640625p-53 {+ 3800249299484170 -53 (2.04706e-016)}
; Y = -1.902536476881037774688820718438364565372467041015625p508 {- 4064662940969722 508 (-1.5943e+153)}
; 1.843824854320589512468586690374650061130523681640625p-53 < -1.902536476881037774688820718438364565372467041015625p508 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111001010 #b1101100000000100111001111101100011011011111000001010)))
(assert (= y (fp #b1 #b10111111011 #b1110011100001100101000010110101110100110101011111010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
