(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.315652400226746454592330337618477642536163330078125p-923 {- 1421572032039778 -923 (-1.85548e-278)}
; Y = -1.7720613778845868413469588631414808332920074462890625p954 {- 3477055333748177 954 (-2.69833e+287)}
; -1.315652400226746454592330337618477642536163330078125p-923 > -1.7720613778845868413469588631414808332920074462890625p954 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100100 #b0101000011001110100110000111111111100000101101100010)))
(assert (= y (fp #b1 #b11110111001 #b1100010110100101110100001000000010000100110111010001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
