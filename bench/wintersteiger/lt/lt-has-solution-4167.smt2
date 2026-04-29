(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.78194913500956442220513054053299129009246826171875p-883 {+ 3521585833051756 -883 (2.76318e-266)}
; Y = -1.2893880556214991628394272993318736553192138671875p-765 {- 1303287939462456 -765 (-6.64411e-231)}
; 1.78194913500956442220513054053299129009246826171875p-883 < -1.2893880556214991628394272993318736553192138671875p-765 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010001100 #b1100100000101101110100011000101000000000011001101100)))
(assert (= y (fp #b1 #b00100000010 #b0100101000010101010101011110101010111111010100111000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
