(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.979636848039510343966185246245004236698150634765625p894 {- 4411892143789146 894 (-2.61458e+269)}
; Y = 1.9425677184015623932822336428216658532619476318359375p198 {+ 4244947625364735 198 (7.80396e+059)}
; -1.979636848039510343966185246245004236698150634765625p894 < 1.9425677184015623932822336428216658532619476318359375p198 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101111101 #b1111101011001001011110110000000001001001010001011010)))
(assert (= y (fp #b0 #b10011000101 #b1111000101001100000111100011010011001100110011111111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
