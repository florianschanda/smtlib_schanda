(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.360956260064679401722287366283126175403594970703125p811 {- 1625602478324338 811 (-1.85853e+244)}
; Y = 1.3800663565331461324348083508084528148174285888671875p350 {+ 1711666701658739 350 (3.16518e+105)}
; -1.360956260064679401722287366283126175403594970703125p811 > 1.3800663565331461324348083508084528148174285888671875p350 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100101010 #b0101110001100111101000010010010001000011101001110010)))
(assert (= y (fp #b0 #b10101011101 #b0110000101001100000001110101101110011110101001110011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
