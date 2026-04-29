(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6365317949174704725834317287080921232700347900390625p623 {- 2866684354399793 623 (-5.69655e+187)}
; Y = -1.6634729253745792476593123865313827991485595703125p-573 {- 2988016419487368 -573 (-5.38057e-173)}
; -1.6365317949174704725834317287080921232700347900390625p623 > -1.6634729253745792476593123865313827991485595703125p-573 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001101110 #b1010001011110011101111110110101000001000111000110001)))
(assert (= y (fp #b1 #b00111000010 #b1010100111011001010111001001010001000011111010001000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
