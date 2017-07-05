(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1711515109485286512125412627938203513622283935546875p-665 {- 770797880931691 -665 (-7.65008e-201)}
; Y = -1.9371546471749194751055256347171962261199951171875p91 {- 4220569319805496 91 (-4.79616e+027)}
; -1.1711515109485286512125412627938203513622283935546875p-665 M -1.9371546471749194751055256347171962261199951171875p91 == -1.1711515109485286512125412627938203513622283935546875p-665
; [HW: -1.1711515109485286512125412627938203513622283935546875p-665] 

; mpf : - 770797880931691 -665
; mpfd: - 770797880931691 -665 (-7.65008e-201) class: Neg. norm. non-zero
; hwf : - 770797880931691 -665 (-7.65008e-201) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101100110 #b0010101111010000100101011101111000101111010101101011)))
(assert (= y (fp #b1 #b10001011010 #b1110111111101001010111011111000011101001001000111000)))
(assert (= r (fp #b1 #b00101100110 #b0010101111010000100101011101111000101111010101101011)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
