(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6283539792170447224606277814018540084362030029296875p-661 {+ 2829854746658651 -661 (1.70185e-199)}
; Y = 1.609129350236284228259364681434817612171173095703125p-546 {+ 2743274714744562 -546 (6.98575e-165)}
; 1.6283539792170447224606277814018540084362030029296875p-661 * 1.609129350236284228259364681434817612171173095703125p-546 == +zero
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
(assert (= x (fp #b0 #b00101101010 #b1010000011011011110011100110111100001100011101011011)))
(assert (= y (fp #b0 #b00111011101 #b1001101111101111111001101010111001001100011011110010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
