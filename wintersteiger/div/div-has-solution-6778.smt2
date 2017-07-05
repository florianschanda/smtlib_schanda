(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.21289470046874736652853243867866694927215576171875p-504 {- 958792493700204 -504 (-2.31582e-152)}
; Y = -1.6186604242025011135552858831943012773990631103515625p601 {- 2786198855907257 601 (-1.34333e+181)}
; -1.21289470046874736652853243867866694927215576171875p-504 / -1.6186604242025011135552858831943012773990631103515625p601 == +zero
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
(assert (= x (fp #b1 #b01000000111 #b0011011010000000010001000110000000000001010001101100)))
(assert (= y (fp #b1 #b11001011000 #b1001111001100000100001111001000101000111011110111001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
