(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1216229881671153645328331549535505473613739013671875p66 {+ 547741244189107 66 (8.27612e+019)}
; Y = -1.2532426746826248464827813222655095160007476806640625p-645 {- 1140503615334977 -645 (-8.58397e-195)}
; 1.1216229881671153645328331549535505473613739013671875p66 > -1.2532426746826248464827813222655095160007476806640625p-645 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001000001 #b0001111100100010101011110010010010011110100110110011)))
(assert (= y (fp #b1 #b00101111010 #b0100000011010100100000110000110110110110101001000001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
