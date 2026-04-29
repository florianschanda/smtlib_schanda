(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4083318548060830277535160348634235560894012451171875p-893 {- 1838963189148179 -893 (-2.13265e-269)}
; Y = 1.2651228733464618958493019817979075014591217041015625p-705 {+ 1194007273610521 -705 (7.51598e-213)}
; -1.4083318548060830277535160348634235560894012451171875p-893 < 1.2651228733464618958493019817979075014591217041015625p-705 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000010 #b0110100010001000011011111011101001001110101000010011)))
(assert (= y (fp #b0 #b00100111110 #b0100001111011111000101111011011001110001110100011001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
