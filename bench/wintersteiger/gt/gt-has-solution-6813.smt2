(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9152392815928804825631459607393480837345123291015625p456 {+ 4121871287536537 456 (3.5637e+137)}
; Y = -1.074213295593368311386939240037463605403900146484375p658 {- 334226970380230 658 (-1.28478e+198)}
; 1.9152392815928804825631459607393480837345123291015625p456 > -1.074213295593368311386939240037463605403900146484375p658 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111000111 #b1110101001001101000111110001111001110100101110011001)))
(assert (= y (fp #b1 #b11010010001 #b0001001011111111101001000111110110000000011111000110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
