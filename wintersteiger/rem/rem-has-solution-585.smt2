(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7265799558356091925048758639604784548282623291015625p85 {- 3272225218356121 85 (-6.67938e+025)}
; Y = -1.2130348485139013092748427879996597766876220703125p568 {- 959423664384136 568 (-1.17195e+171)}
; -1.7265799558356091925048758639604784548282623291015625p85 % -1.2130348485139013092748427879996597766876220703125p568 == -1.7265799558356091925048758639604784548282623291015625p85
; [HW: -1.7265799558356091925048758639604784548282623291015625p85] 

; mpf : - 3272225218356121 85
; mpfd: - 3272225218356121 85 (-6.67938e+025) class: Neg. norm. non-zero
; hwf : - 3272225218356121 85 (-6.67938e+025) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001010100 #b1011101000000001001001001101110000111110001110011001)))
(assert (= y (fp #b1 #b11000110111 #b0011011010001001011100111010101101000110100010001000)))
(assert (= r (fp #b1 #b10001010100 #xba0124dc3e399)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
