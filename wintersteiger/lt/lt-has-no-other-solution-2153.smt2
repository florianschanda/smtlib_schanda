(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8285496547304183057036652826354838907718658447265625p-878 {- 3731455916301865 -878 (-9.07341e-265)}
; Y = -1.0957380857618677083564762142486870288848876953125p248 {- 431166007362312 248 (-4.95616e+074)}
; -1.8285496547304183057036652826354838907718658447265625p-878 < -1.0957380857618677083564762142486870288848876953125p248 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010010001 #b1101010000011011110101001000011000101101111000101001)))
(assert (= y (fp #b1 #b10011110111 #b0001100010000010010010101000101101010100001100001000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
