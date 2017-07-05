(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4208786363926282358960406781989149749279022216796875p183 {- 1895468870026043 183 (-1.74199e+055)}
; Y = 1.0701440937110608953020118860877119004726409912109375p255 {+ 315900914299375 255 (6.19571e+076)}
; -1.4208786363926282358960406781989149749279022216796875p183 = 1.0701440937110608953020118860877119004726409912109375p255 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010110110 #b0110101110111110101100111100101011100100001100111011)))
(assert (= y (fp #b0 #b10011111110 #b0001000111110100111101101001110001111111000111101111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
