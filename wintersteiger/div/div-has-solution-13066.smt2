(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7852346318527760882233224037918262183666229248046875p772 {- 3536382395410571 772 (-4.43457e+232)}
; Y = -1.921359780289064733693749076337553560733795166015625p698 {- 4149435563183994 698 (-2.52665e+210)}
; -1.7852346318527760882233224037918262183666229248046875p772 / -1.921359780289064733693749076337553560733795166015625p698 == 1.8583033226439151786024694956722669303417205810546875p73
; [HW: 1.8583033226439151786024694956722669303417205810546875p73] 

; mpf : + 3865454524029995 73
; mpfd: + 3865454524029995 73 (1.75512e+022) class: Pos. norm. non-zero
; hwf : + 3865454524029995 73 (1.75512e+022) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100000011 #b1100100100000101001000110000011101111110100010001011)))
(assert (= y (fp #b1 #b11010111001 #b1110101111011110001111000000110000110000111101111010)))
(assert (= r (fp #b0 #b10001001000 #b1101101110111001110001000011110011001101110000101011)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
