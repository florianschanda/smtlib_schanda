(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4866626521551051798297748973709531128406524658203125p675 {+ 2191733738900869 675 (2.33056e+203)}
; Y = -1.3758937267966653283934874707483686506748199462890625p420 {- 1692874847932369 420 (-3.72549e+126)}
; 1.4866626521551051798297748973709531128406524658203125p675 > -1.3758937267966653283934874707483686506748199462890625p420 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010100010 #b0111110010010101111011000110111100110000110110000101)))
(assert (= y (fp #b1 #b10110100011 #b0110000000111010100100100011111101011100111111010001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
