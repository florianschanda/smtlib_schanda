(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.78940089993847006866189985885284841060638427734375p-526 {+ 3555145598808828 -526 (8.14573e-159)}
; Y = -1.382840752884111790166343780583702027797698974609375p-1009 {- 1724161472031126 -1009 (-2.52062e-304)}
; 1.78940089993847006866189985885284841060638427734375p-526 = -1.382840752884111790166343780583702027797698974609375p-1009 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111110001 #b1100101000010110001011010110100010101011001011111100)))
(assert (= y (fp #b1 #b00000001110 #b0110001000000001110110100000000100110110100110010110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
