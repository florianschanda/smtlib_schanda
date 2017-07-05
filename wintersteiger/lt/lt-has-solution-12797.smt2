(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9828113096983912555515416897833347320556640625p-945 {+ 4426188648133184 -945 (6.66708e-285)}
; Y = -1.6364343750021828061136375254136510193347930908203125p689 {- 2866245614105605 689 (-4.20306e+207)}
; 1.9828113096983912555515416897833347320556640625p-945 < -1.6364343750021828061136375254136510193347930908203125p689 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001110 #b1111101110011001100001011010000101001011001001000000)))
(assert (= y (fp #b1 #b11010110000 #b1010001011101101010111001111101010101111010000000101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
