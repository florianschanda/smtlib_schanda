(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.736869548343023428316200806875713169574737548828125p159 {- 3318565423338306 159 (-1.26922e+048)}
; Y = -1.809467213066621837924685678444802761077880859375p976 {- 3645516239135472 976 (-1.15565e+294)}
; -1.736869548343023428316200806875713169574737548828125p159 > -1.809467213066621837924685678444802761077880859375p976 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010011110 #b1011110010100011011110111001001110001101001101000010)))
(assert (= y (fp #b1 #b11111001111 #b1100111100111001001111100100011101001110001011110000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
