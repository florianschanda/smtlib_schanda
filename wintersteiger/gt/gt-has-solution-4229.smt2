(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.2424484597062972479619702426134608685970306396484375p-839 {+ 1091890792789831 -839 (3.38932e-253)}
; -zero > 1.2424484597062972479619702426134608685970306396484375p-839 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b00010111000 #b0011111000010001000110100010110101100111011101000111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
