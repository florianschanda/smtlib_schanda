(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.342331137841015209488659820635803043842315673828125p581 {- 1541722384818114 581 (-1.0624e+175)}
; Y = -1.45614700119792761512371725984849035739898681640625p684 {- 2054303464621156 684 (-1.16875e+206)}
; -1.342331137841015209488659820635803043842315673828125p581 = -1.45614700119792761512371725984849035739898681640625p684 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001000100 #b0101011110100011000000110111000101101101111111000010)))
(assert (= y (fp #b1 #b11010101011 #b0111010011000110000011001100010001010000010001100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
