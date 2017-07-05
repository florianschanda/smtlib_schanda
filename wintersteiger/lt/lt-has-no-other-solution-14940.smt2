(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.787609362155549330708481647889129817485809326171875p-732 {+ 3547077229917246 -732 (7.91254e-221)}
; Y = 1.40006638303292874070393736474215984344482421875p858 {+ 1801738813550560 858 (2.69082e+258)}
; 1.787609362155549330708481647889129817485809326171875p-732 < 1.40006638303292874070393736474215984344482421875p858 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100100011 #b1100100110100000110001000110010001111011010000111110)))
(assert (= y (fp #b0 #b11101011001 #b0110011001101010110000000001111101011010111111100000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
