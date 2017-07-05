(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.932826274574178437859472978743724524974822998046875p894 {- 4201076062573678 894 (-2.55275e+269)}
; Y = 1.284468879730117141235723465797491371631622314453125p110 {+ 1281133940751058 110 (1.66734e+033)}
; -1.932826274574178437859472978743724524974822998046875p894 > 1.284468879730117141235723465797491371631622314453125p110 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101111101 #b1110111011001101101100111110011000100101010001101110)))
(assert (= y (fp #b0 #b10001101101 #b0100100011010010111100111101011100101011101011010010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
