(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.232715522709041611193470089347101747989654541015625p526 {- 1048057541355770 526 (-2.70795e+158)}
; Y = 1.986069617326541969504205553676001727581024169921875p-299 {+ 4440862761153182 -299 (1.94996e-090)}
; -1.232715522709041611193470089347101747989654541015625p526 < 1.986069617326541969504205553676001727581024169921875p-299 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000001101 #b0011101110010011001111101001011101001110100011111010)))
(assert (= y (fp #b0 #b01011010100 #b1111110001101111000011101111010111111111001010011110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
