(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0876900092482755244560621576965786516666412353515625p-738 {+ 394920692974649 -738 (7.52261e-223)}
; Y = 1.3550529800528874346809971029870212078094482421875p-386 {+ 1599016468662968 -386 (8.59761e-117)}
; 1.0876900092482755244560621576965786516666412353515625p-738 * 1.3550529800528874346809971029870212078094482421875p-386 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100011101 #b0001011001110010110110100011100111101000010000111001)))
(assert (= y (fp #b0 #b01001111101 #b0101101011100100110000001000100110101100101010111000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
