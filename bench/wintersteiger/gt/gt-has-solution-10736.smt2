(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5421216764498224538471049527288414537906646728515625p555 {- 2441498980048889 555 (-1.81872e+167)}
; Y = -1.04852869359289169182147816172800958156585693359375p706 {- 218553806381724 706 (-3.52986e+212)}
; -1.5421216764498224538471049527288414537906646728515625p555 > -1.04852869359289169182147816172800958156585693359375p706 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000101010 #b1000101011001000011111000111011011001101111111111001)))
(assert (= y (fp #b1 #b11011000001 #b0000110001101100011000000101111111100110001010011100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
