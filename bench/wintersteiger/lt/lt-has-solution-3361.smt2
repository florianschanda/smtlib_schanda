(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8714877641767369009784260924789123237133026123046875p488 {- 3924831970004299 488 (-1.49563e+147)}
; Y = -1.650202695029590049813350560725666582584381103515625p830 {- 2928252615050554 830 (-1.1815e+250)}
; -1.8714877641767369009784260924789123237133026123046875p488 < -1.650202695029590049813350560725666582584381103515625p830 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111100111 #b1101111100011001110100100111011000000000110101001011)))
(assert (= y (fp #b1 #b11100111101 #b1010011001110011101011110000111011101100010100111010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
