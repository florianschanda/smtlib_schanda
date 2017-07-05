(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.11846560556233498573419637978076934814453125p329 {- 533521657066752 329 (-1.22318e+099)}
; Y = 1.852958509607754766790321809821762144565582275390625p132 {+ 3841383626031978 132 (1.00885e+040)}
; -1.11846560556233498573419637978076934814453125p329 = 1.852958509607754766790321809821762144565582275390625p132 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101001000 #b0001111001010011110000110000110110010111010100000000)))
(assert (= y (fp #b0 #b10010000011 #b1101101001011011011111010010011110011100001101101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
