(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.128601946049149429285307633108459413051605224609375p-860 {- 579171676306070 -860 (-1.46806e-259)}
; Y = -1.319206105731308920070432577631436288356781005859375p865 {- 1437576498825910 865 (-3.24533e+260)}
; -1.128601946049149429285307633108459413051605224609375p-860 < -1.319206105731308920070432577631436288356781005859375p865 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010100011 #b0010000011101100000011101010000001111011101010010110)))
(assert (= y (fp #b1 #b11101100000 #b0101000110110111011111011100100011001100101010110110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
