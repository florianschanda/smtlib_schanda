(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3890020278577666079655728026409633457660675048828125p-596 {+ 1751909387706605 -596 (5.35581e-180)}
; Y = 1.8534432674716774247514194939867593348026275634765625p-258 {+ 3843566781367305 -258 (4.00166e-078)}
; 1.3890020278577666079655728026409633457660675048828125p-596 = 1.8534432674716774247514194939867593348026275634765625p-258 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110101011 #b0110001110010101101000110000101110111010000011101101)))
(assert (= y (fp #b0 #b01011111101 #b1101101001111011010000100000101011001000010000001001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
