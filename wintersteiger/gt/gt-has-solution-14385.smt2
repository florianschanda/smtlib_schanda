(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2177044759087787273443836966180242598056793212890625p827 {- 980453796579665 827 (-1.0898e+249)}
; Y = 1.0769173988825808674363315731170587241649627685546875p952 {+ 346405168945899 952 (4.09957e+286)}
; -1.2177044759087787273443836966180242598056793212890625p827 > 1.0769173988825808674363315731170587241649627685546875p952 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100111010 #b0011011110111011011110110000010000111000100101010001)))
(assert (= y (fp #b0 #b11110110111 #b0001001110110000110110111101000010110001101011101011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
