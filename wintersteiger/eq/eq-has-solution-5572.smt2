(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1959437114477271535406543989665806293487548828125p153 {- 882452025861576 153 (-1.36553e+046)}
; Y = -1.8724039740802094211602479845169000327587127685546875p-885 {- 3928958212584171 -885 (-7.25861e-267)}
; -1.1959437114477271535406543989665806293487548828125p153 = -1.8724039740802094211602479845169000327587127685546875p-885 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010011000 #b0011001000101001010111011111100010000110010111001000)))
(assert (= y (fp #b1 #b00010001010 #b1101111101010101110111011110100110010011001011101011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
