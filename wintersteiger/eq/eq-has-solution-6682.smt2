(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2367460587574099495355994804413057863712310791015625p-562 {- 1066209462001305 -562 (-8.19262e-170)}
; Y = 1.6748124960715971010216662762104533612728118896484375p381 {+ 3039085305852999 381 (8.24887e+114)}
; -1.2367460587574099495355994804413057863712310791015625p-562 = 1.6748124960715971010216662762104533612728118896484375p381 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111001101 #b0011110010011011011000111100001111010001111010011001)))
(assert (= y (fp #b0 #b10101111100 #b1010110011000000100000110000000110001111010001000111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
