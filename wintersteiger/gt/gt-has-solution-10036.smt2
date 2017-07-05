(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.582704141882718573697275132872164249420166015625p-446 {+ 2624266156250256 -446 (8.71007e-135)}
; Y = -1.562078566952192826278178472421132028102874755859375p327 {- 2531376824678838 327 (-4.27082e+098)}
; 1.582704141882718573697275132872164249420166015625p-446 > -1.562078566952192826278178472421132028102874755859375p327 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001000001 #b1001010100101100000110010100000010100001010010010000)))
(assert (= y (fp #b1 #b10101000110 #b1000111111100100011000011000011011010111100110110110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
