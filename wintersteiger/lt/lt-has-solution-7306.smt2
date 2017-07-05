(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.877129331810249990297734257183037698268890380859375p-195 {- 3950239331896374 -195 (-3.73805e-059)}
; Y = 1.3721170179849107029212973429821431636810302734375p-413 {+ 1675866063535064 -413 (6.48639e-125)}
; -1.877129331810249990297734257183037698268890380859375p-195 < 1.3721170179849107029212973429821431636810302734375p-413 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100111100 #b1110000010001011100011000100001001111100110000110110)))
(assert (= y (fp #b0 #b01001100010 #b0101111101000011000011111001011010000111101111011000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
