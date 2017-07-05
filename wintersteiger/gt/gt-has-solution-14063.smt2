(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.647652805090341399107956021907739341259002685546875p688 {+ 2916768931670318 688 (2.11594e+207)}
; Y = -1.901693728017514128936227280064485967159271240234375p-562 {- 4060867537501990 -562 (-1.25975e-169)}
; 1.647652805090341399107956021907739341259002685546875p688 > -1.901693728017514128936227280064485967159271240234375p-562 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010101111 #b1010010111001100100100110000000100000110100100101110)))
(assert (= y (fp #b1 #b00111001101 #b1110011011010101011001100111000011010111111100100110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
