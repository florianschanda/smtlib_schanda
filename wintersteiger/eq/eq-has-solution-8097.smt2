(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7292319219686220765908046814729459583759307861328125p341 {- 3284168612044557 341 (-7.74608e+102)}
; Y = 1.8364282901785140555972475340240634977817535400390625p-216 {+ 3766938135970097 -216 (1.74379e-065)}
; -1.7292319219686220765908046814729459583759307861328125p341 = 1.8364282901785140555972475340240634977817535400390625p-216 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101010100 #b1011101010101110111100010111100000001101111100001101)))
(assert (= y (fp #b0 #b01100100111 #b1101011000100000001010100001011111000100000100110001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
