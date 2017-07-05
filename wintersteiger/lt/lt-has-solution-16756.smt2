(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.189023368914758460590519462130032479763031005859375p1014 {- 851285573808822 1014 (-2.0874e+305)}
; Y = -1.8480449603235220568109298255876637995243072509765625p480 {- 3819254967306441 480 (-5.76913e+144)}
; -1.189023368914758460590519462130032479763031005859375p1014 < -1.8480449603235220568109298255876637995243072509765625p480 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111110101 #b0011000001100011110101011110001110101011001010110110)))
(assert (= y (fp #b1 #b10111011111 #b1101100100011001011110010111101000100000100011001001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
