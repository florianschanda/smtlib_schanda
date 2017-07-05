(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6347012455311424883319659784319810569286346435546875p465 {+ 2858440292865643 465 (1.55735e+140)}
; Y = 1.5920170239093820452325189762632362544536590576171875p-121 {+ 2666207648275283 -121 (5.9885e-037)}
; 1.6347012455311424883319659784319810569286346435546875p465 = 1.5920170239093820452325189762632362544536590576171875p-121 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111010000 #b1010001001111011110001111110010001001001011001101011)))
(assert (= y (fp #b0 #b01110000110 #b1001011110001110011011010111110001011101101101010011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
