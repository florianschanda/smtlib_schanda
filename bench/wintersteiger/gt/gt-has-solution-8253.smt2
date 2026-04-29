(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8448593856448614047849332564510405063629150390625p-345 {- 3804908414370664 -345 (-2.57404e-104)}
; Y = -1.1528346949365861906500185796176083385944366455078125p-182 {- 688306275165693 -182 (-1.88065e-055)}
; -1.8448593856448614047849332564510405063629150390625p-345 > -1.1528346949365861906500185796176083385944366455078125p-182 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010100110 #b1101100001001000101101000110011100010000001101101000)))
(assert (= y (fp #b1 #b01101001001 #b0010011100100000001011001011000001110010010111111101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
