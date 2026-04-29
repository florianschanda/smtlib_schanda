(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4664823104529887132230214774608612060546875p1014 {+ 2100849559531008 1014 (2.5745e+305)}
; Y = -1.0870449014492826744771036828751675784587860107421875p15 {- 392015385731491 15 (-35620.3)}
; 1.4664823104529887132230214774608612060546875p1014 > -1.0870449014492826744771036828751675784587860107421875p15 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111110101 #b0111011101101011011000100111101110001110111000000000)))
(assert (= y (fp #b1 #b10000001110 #b0001011001001000100100110001110100000010000110100011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
