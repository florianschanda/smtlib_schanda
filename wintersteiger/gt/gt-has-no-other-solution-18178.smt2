(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0358958824912132268281084179761819541454315185546875p761 {- 161660683011563 761 (-1.25644e+229)}
; Y = -1.545641681303760339716291127842850983142852783203125p271 {- 2457351672597426 271 (-5.86459e+081)}
; -1.0358958824912132268281084179761819541454315185546875p761 > -1.545641681303760339716291127842850983142852783203125p271 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011111000 #b0000100100110000011110001111100101011100010111101011)))
(assert (= y (fp #b1 #b10100001110 #b1000101110101111001011000101100010001000101110110010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
