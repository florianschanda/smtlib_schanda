(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3125588849347444853066235737060196697711944580078125p317 {- 1407640077723453 317 (-3.50451e+095)}
; Y = -1.924399163195858353248013372649438679218292236328125p-515 {- 4163123726910466 -515 (-1.7941e-155)}
; -1.3125588849347444853066235737060196697711944580078125p317 < -1.924399163195858353248013372649438679218292236328125p-515 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100111100 #b0101000000000011110110111110110011011110011100111101)))
(assert (= y (fp #b1 #b00111111100 #b1110110010100101011011000110111001100000010000000010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
