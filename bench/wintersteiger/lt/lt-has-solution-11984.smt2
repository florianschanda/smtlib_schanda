(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5894693476396535292138878503465093672275543212890625p-866 {+ 2654733934376273 -866 (3.23055e-261)}
; Y = 1.3280571164478456314128607118618674576282501220703125p51 {+ 1477437907390757 51 (2.99052e+015)}
; 1.5894693476396535292138878503465093672275543212890625p-866 < 1.3280571164478456314128607118618674576282501220703125p51 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010011101 #b1001011011100111011101101001001000011011010101010001)))
(assert (= y (fp #b0 #b10000110010 #b0101001111111011100011010001101001011101000100100101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
