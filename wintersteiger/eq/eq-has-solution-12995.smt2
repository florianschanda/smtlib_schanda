(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.60611675175475010490799832041375339031219482421875p231 {- 2729707177345708 231 (-5.54251e+069)}
; Y = 1.8371295880041618175937401247210800647735595703125p358 {+ 3770096500596360 358 (1.07864e+108)}
; -1.60611675175475010490799832041375339031219482421875p231 = 1.8371295880041618175937401247210800647735595703125p358 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011100110 #b1001101100101010011101111010101001011000001010101100)))
(assert (= y (fp #b0 #b10101100101 #b1101011001001110000111111110101011111101111010001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
