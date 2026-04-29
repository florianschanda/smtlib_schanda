(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.521467218445319513620006546261720359325408935546875p-783 {- 2348479570676270 -783 (-2.99072e-236)}
; Y = -1.7713333318102952862460597316385246813297271728515625p144 {- 3473776505719289 144 (-3.95021e+043)}
; -1.521467218445319513620006546261720359325408935546875p-783 = -1.7713333318102952862460597316385246813297271728515625p144 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011110000 #b1000010101111110111000000010100100101000101000101110)))
(assert (= y (fp #b1 #b10010001111 #b1100010101110110000110011110101001110000100111111001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
