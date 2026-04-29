(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.69917388088796617040543424081988632678985595703125p478 {- 3148799229434228 478 (-1.3261e+144)}
; Y = -1.6369957869096440905565259527065791189670562744140625p-559 {- 2868773988562849 -559 (-8.67521e-169)}
; -1.69917388088796617040543424081988632678985595703125p478 > -1.6369957869096440905565259527065791189670562744140625p-559 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011101 #b1011001011111101000011110011100010100001100101110100)))
(assert (= y (fp #b1 #b00111010000 #b1010001100010010001001111110100001110111011110100001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
