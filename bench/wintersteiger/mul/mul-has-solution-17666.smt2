(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.371643417990700442032903083600103855133056640625p-620 {- 1673733158777616 -620 (-3.15242e-187)}
; Y = -1.818929967401875291699298031744547188282012939453125p-616 {- 3688132696033618 -616 (-6.68865e-186)}
; -1.371643417990700442032903083600103855133056640625p-620 * -1.818929967401875291699298031744547188282012939453125p-616 == +zero
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
(assert (= x (fp #b1 #b00110010011 #b0101111100100100000001011110011000001011001100010000)))
(assert (= y (fp #b1 #b00110010111 #b1101000110100101011001001111001110110100100101010010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
