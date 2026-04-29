(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8242119694745115854317418779828585684299468994140625p1002 {+ 3711920718599713 1002 (7.81864e+301)}
; Y = 1.6762283082791056276761310073197819292545318603515625p850 {+ 3045461557183161 850 (1.25843e+256)}
; 1.8242119694745115854317418779828585684299468994140625p1002 = 1.6762283082791056276761310073197819292545318603515625p850 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101001 #b1101001011111111100011100011110111011101011000100001)))
(assert (= y (fp #b0 #b11101010001 #b1010110100011101010011000110010010110000001010111001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
