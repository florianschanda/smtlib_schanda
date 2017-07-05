(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.01136804517490919153033246402628719806671142578125p-489 {- 51197124013652 -489 (-6.32763e-148)}
; Y = 1.136371112464888977200416775303892791271209716796875p281 {+ 614160891280974 281 (4.41519e+084)}
; -1.01136804517490919153033246402628719806671142578125p-489 < 1.136371112464888977200416775303892791271209716796875p281 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000010110 #b0000001011101001000001000010011000111110111001010100)))
(assert (= y (fp #b0 #b10100011000 #b0010001011101001001101111001110000100111111001001110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
