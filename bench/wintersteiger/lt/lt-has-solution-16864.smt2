(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.195406750860502853583966498263180255889892578125p-351 {- 880033770361040 -351 (-2.60608e-106)}
; Y = -1.3531612215868833448695340848644264042377471923828125p234 {- 1590496745940397 234 (-3.73567e+070)}
; -1.195406750860502853583966498263180255889892578125p-351 < -1.3531612215868833448695340848644264042377471923828125p234 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010100000 #b0011001000000110001011010100010001011101000011010000)))
(assert (= y (fp #b1 #b10011101001 #b0101101001101000110001100001100011101110010110101101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
