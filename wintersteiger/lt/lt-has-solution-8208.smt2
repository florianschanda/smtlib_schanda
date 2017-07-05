(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.919003899933100054653323240927420556545257568359375p-976 {- 4138825621290742 -976 (-3.00469e-294)}
; Y = -1.9639838241703755361555749914259649813175201416015625p678 {- 4341397191324889 678 (-2.46306e+204)}
; -1.919003899933100054653323240927420556545257568359375p-976 < -1.9639838241703755361555749914259649813175201416015625p678 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000101111 #b1110101101000011110101101110111100011011111011110110)))
(assert (= y (fp #b1 #b11010100101 #b1111011011000111101001001101011010101111010011011001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
