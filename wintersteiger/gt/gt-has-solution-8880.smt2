(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.424090443639549175003367054159753024578094482421875p824 {- 1909933563946462 824 (-1.59314e+248)}
; Y = -1.0061029376505639110206402619951404631137847900390625p-263 {- 27485187728945 -263 (-6.78818e-080)}
; -1.424090443639549175003367054159753024578094482421875p824 > -1.0061029376505639110206402619951404631137847900390625p-263 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100110111 #b0110110010010001001100001111100111111010010111011110)))
(assert (= y (fp #b1 #b01011111000 #b0000000110001111111101100100110110011110011000110001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
