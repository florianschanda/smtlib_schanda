(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.606065886607952908349261633702553808689117431640625p648 {+ 2729478101089546 648 (1.87586e+195)}
; Y = 1.36042094953084102826323942281305789947509765625p1011 {+ 1623191654003616 1011 (2.98538e+304)}
; 1.606065886607952908349261633702553808689117431640625p648 < 1.36042094953084102826323942281305789947509765625p1011 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000111 #b1001101100100111001000100100101000110011110100001010)))
(assert (= y (fp #b0 #b11111110010 #b0101110001000100100011000001111100000111001110100000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
