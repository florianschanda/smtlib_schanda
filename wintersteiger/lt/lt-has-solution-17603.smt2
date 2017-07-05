(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9181033125050148679946460106293670833110809326171875p-926 {- 4134769736085203 -926 (-3.3814e-279)}
; Y = 1.196208551086280547082196790142916142940521240234375p331 {+ 883644757559078 331 (5.23282e+099)}
; -1.9181033125050148679946460106293670833110809326171875p-926 < 1.196208551086280547082196790142916142940521240234375p331 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100001 #b1110101100001000110100011001010110001110111011010011)))
(assert (= y (fp #b0 #b10101001010 #b0011001000111010101110010011111000011100011100100110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
