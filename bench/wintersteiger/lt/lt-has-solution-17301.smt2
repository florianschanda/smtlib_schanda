(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1859073691376007531061986810527741909027099609375p313 {+ 837252358373528 313 (1.97897e+094)}
; Y = -1.140824836324147550925545147038064897060394287109375p-131 {- 634218680393942 -131 (-4.19073e-040)}
; 1.1859073691376007531061986810527741909027099609375p313 < -1.140824836324147550925545147038064897060394287109375p-131 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100111000 #b0010111110010111101000000001011010001000000010011000)))
(assert (= y (fp #b1 #b01101111100 #b0010010000001101000110001011001001111010000011010110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
