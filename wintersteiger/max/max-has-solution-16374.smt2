(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3258449045599254301208702599979005753993988037109375p63 {- 1467474990756655 63 (-1.22288e+019)}
; Y = 1.6441056375055891347614078767946921288967132568359375p112 {+ 2900793909057407 112 (8.53668e+033)}
; -1.3258449045599254301208702599979005753993988037109375p63 M 1.6441056375055891347614078767946921288967132568359375p112 == 1.6441056375055891347614078767946921288967132568359375p112
; [HW: 1.6441056375055891347614078767946921288967132568359375p112] 

; mpf : + 2900793909057407 112
; mpfd: + 2900793909057407 112 (8.53668e+033) class: Pos. norm. non-zero
; hwf : + 2900793909057407 112 (8.53668e+033) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000111110 #b0101001101101010100100100101100010100111001100101111)))
(assert (= y (fp #b0 #b10001101111 #b1010010011100100000110110110100001000001011101111111)))
(assert (= r (fp #b0 #b10001101111 #b1010010011100100000110110110100001000001011101111111)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
