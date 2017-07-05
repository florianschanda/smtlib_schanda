(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.906516465771634472048390307463705539703369140625p-748 {- 4082587217454352 -748 (-1.28767e-225)}
; Y = 1.638914878466596558581613862770609557628631591796875p973 {+ 2877416808583630 973 (1.3084e+293)}
; -1.906516465771634472048390307463705539703369140625p-748 > 1.638914878466596558581613862770609557628631591796875p973 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100010011 #b1110100000010001011101101000110111000110010100010000)))
(assert (= y (fp #b0 #b11111001100 #b1010001110001111111011001110101111110001000111001110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
