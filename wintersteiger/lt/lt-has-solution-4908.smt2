(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6487034298200027304659442961565218865871429443359375p-907 {- 2921500524811327 -907 (-1.52383e-273)}
; Y = -1.82754347401817707208238061866723001003265380859375p852 {- 3726924481221148 852 (-5.48813e+256)}
; -1.6487034298200027304659442961565218865871429443359375p-907 < -1.82754347401817707208238061866723001003265380859375p852 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001110100 #b1010011000010001011011011000111111100001010000111111)))
(assert (= y (fp #b1 #b11101010011 #b1101001111011001111000111001110011101101001000011100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
