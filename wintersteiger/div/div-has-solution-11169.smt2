(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1975087605215184449747312100953422486782073974609375p-306 {- 889500380287119 -306 (-9.18544e-093)}
; Y = -1.8917517236327825447261830049683339893817901611328125p739 {- 4016092730259597 739 (-5.47055e+222)}
; -1.1975087605215184449747312100953422486782073974609375p-306 / -1.8917517236327825447261830049683339893817901611328125p739 == 0.000000075461365600659746633027680218219757080078125p-1022
; [HW: 0.000000075461365600659746633027680218219757080078125p-1022] 

; mpf : + 339847778 -1023
; mpfd: + 339847778 -1023 (1.67907e-315) class: Pos. denorm.
; hwf : + 339847778 -1023 (1.67907e-315) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011001101 #b0011001010001111111011110010001100011101000010001111)))
(assert (= y (fp #b1 #b11011100010 #b1110010001001001110101110100100100100111100010001101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000010100010000011010101001100010)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
