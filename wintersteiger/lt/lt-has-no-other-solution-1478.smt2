(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.87582376182736876302215023315511643886566162109375p524 {- 3944359567407964 524 (-1.03017e+158)}
; Y = -1.40867522255851707058127431082539260387420654296875p-896 {- 1840509580030092 -896 (-2.66646e-270)}
; -1.87582376182736876302215023315511643886566162109375p524 < -1.40867522255851707058127431082539260387420654296875p-896 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000001011 #b1110000000110101111111000110111000011011101101011100)))
(assert (= y (fp #b1 #b00001111111 #b0110100010011110111100000111101110010011000010001100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
