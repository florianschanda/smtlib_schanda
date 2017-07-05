(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.703221422895351278015141360810957849025726318359375p649 {- 3167027738110454 649 (-3.97867e+195)}
; Y = 1.2399433042187266718059390768758021295070648193359375p-681 {+ 1080608575469503 -681 (1.23588e-205)}
; -1.703221422895351278015141360810957849025726318359375p649 > 1.2399433042187266718059390768758021295070648193359375p-681 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010001000 #b1011010000000110010100011011010100101110100111110110)))
(assert (= y (fp #b0 #b00101010110 #b0011110101101100111011001010010010000011011110111111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
