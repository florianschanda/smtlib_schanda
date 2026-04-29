(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.120811115149062064944018857204355299472808837890625p-776 {- 544084893167530 -776 (-2.82004e-234)}
; Y = -1.27692028381236877265791918034665286540985107421875p-338 {- 1247138086988716 -338 (-2.28047e-102)}
; -1.120811115149062064944018857204355299472808837890625p-776 * -1.27692028381236877265791918034665286540985107421875p-338 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011110111 #b0001111011101101011110100010110010001110111110101010)))
(assert (= y (fp #b1 #b01010101101 #b0100011011100100001111110110101010010010101110101100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
