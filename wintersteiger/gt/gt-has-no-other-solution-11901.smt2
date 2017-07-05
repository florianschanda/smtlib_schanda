(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3939916781602281758978278958238661289215087890625p165 {+ 1774380774949480 165 (6.51943e+049)}
; Y = 1.95529847586444560647578327916562557220458984375p827 {+ 4302281859930720 827 (1.74993e+249)}
; 1.3939916781602281758978278958238661289215087890625p165 > 1.95529847586444560647578327916562557220458984375p827 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010100100 #b0110010011011100101000110111110010011000001001101000)))
(assert (= y (fp #b0 #b11100111010 #b1111010010001110011100001101111111000001101001100000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
