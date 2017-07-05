(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9881567416019709781949131865985691547393798828125p366 {+ 4450262333262280 366 (2.98833e+110)}
; Y = -1.5140184259777544895086975884623825550079345703125p110 {- 2314933191694984 110 (-1.96531e+033)}
; 1.9881567416019709781949131865985691547393798828125p366 > -1.5140184259777544895086975884623825550079345703125p110 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101101 #b1111110011110111110101110001100010000000100111001000)))
(assert (= y (fp #b1 #b10001101101 #b1000001110010110101101100010100100011101101010001000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
