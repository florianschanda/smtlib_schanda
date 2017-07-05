(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.87510362983769862665894834208302199840545654296875p-662 {- 3941116381247628 -662 (-9.79869e-200)}
; Y = -1.6685928959803202342726535789552144706249237060546875p-900 {- 3011074717199531 -900 (-1.97403e-271)}
; -1.87510362983769862665894834208302199840545654296875p-662 * -1.6685928959803202342726535789552144706249237060546875p-900 == +zero
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
(assert (= x (fp #b1 #b00101101001 #b1110000000000110110010101001111011000011100010001100)))
(assert (= y (fp #b1 #b00001111011 #b1010101100101000111001110110111010010010110010101011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
