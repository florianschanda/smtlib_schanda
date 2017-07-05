(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3204426559452182576848144890391267836093902587890625p-359 {- 1443145425908497 -359 (-1.12448e-108)}
; Y = -1.59663916987950837977905393927358090877532958984375p457 {- 2687023943143996 457 (-5.94176e+137)}
; -1.3204426559452182576848144890391267836093902587890625p-359 = -1.59663916987950837977905393927358090877532958984375p457 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010011000 #b0101001000001000100001111010011110000111001100010001)))
(assert (= y (fp #b1 #b10111001000 #b1001100010111101010110000011101000100101001000111100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
